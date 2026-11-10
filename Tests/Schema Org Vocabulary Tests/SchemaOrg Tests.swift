import Schema_Org_Vocabulary
import Testing

enum `SchemaOrg Tests` {}

extension `SchemaOrg Tests` {
    @Suite struct Test {
        @Suite struct Unit {}
        @Suite struct `Edge Case` {}
    }
}

extension `SchemaOrg Tests` {

    static func text(_ document: W3C_JSON_LD.Document) -> String {
        String(decoding: document.bytes, as: UTF8.self)
    }

    static func document(_ text: String) throws(W3C_JSON_LD.Error) -> W3C_JSON_LD.Document {
        try W3C_JSON_LD.Document(parsing: Array(text.utf8))
    }

    static func uri(_ text: String) throws(RFC_3986.Error) -> RFC_3986.URI {
        try RFC_3986.URI(text)
    }

    static func creativeWork(_ work: some SchemaOrg.CreativeWork.`Protocol`) -> String? {
        work.name
    }
}

extension `SchemaOrg Tests`.Test.Unit {

    @Test
    func `the vocabulary is schema.org 30.1`() {
        #expect(SchemaOrg.version == "30.1")
    }

    @Test
    func `an application writes as JSON-LD with the schema.org context`() throws {
        let app = SchemaOrg.SoftwareApplication(
            name: "Laurie",
            url: try `SchemaOrg Tests`.uri("https://rule.law/apps/laurie"),
            operatingSystem: .macOS,
            offers: .free
        )
        #expect(
            `SchemaOrg Tests`.text(JSONLD.Document(app))
                == #"{"@context":"https://schema.org","@type":"SoftwareApplication","name":"Laurie","url":"https://rule.law/apps/laurie","operatingSystem":"macOS","offers":{"@type":"Offer","price":0}}"#
        )
    }

    @Test
    func `parameters follow Thing, then the type, then its ancestors from nearest`() throws {
        let item = SchemaOrg.ListItem(
            id: "#1",
            name: "Apps",
            item: SchemaOrg.Thing(node: W3C_JSON_LD.Node(id: "https://rule.law/apps")),
            position: 1
        )
        #expect(
            `SchemaOrg Tests`.text(JSONLD.Document(item))
                == ##"{"@context":"https://schema.org","@id":"#1","@type":"ListItem","name":"Apps","item":{"@id":"https://rule.law/apps"},"position":1}"##
        )
    }

    @Test
    func `inheritance is honoured`() {
        let app = SchemaOrg.SoftwareApplication(name: "Laurie")
        #expect(`SchemaOrg Tests`.creativeWork(app) == "Laurie")
        let thing = SchemaOrg.Thing(app.node)
        #expect(thing?.name == "Laurie")
        #expect(SchemaOrg.SoftwareApplication(SchemaOrg.Thing(name: "x").node) == nil)
        let store = SchemaOrg.AutoPartsStore(name: "Garage", priceRange: "€€", address: .text("Main Street 1"))
        #expect(store.name == "Garage")
        #expect(SchemaOrg.Place(store.node)?.address == .text("Main Street 1"))
        #expect(SchemaOrg.Organization(store.node)?.address == .text("Main Street 1"))
    }

    @Test
    func `several values go through keys`() {
        var list = SchemaOrg.BreadcrumbList()
        list[.itemListElement] = [
            .listItem(SchemaOrg.ListItem(name: "Home", position: 1)),
            .listItem(SchemaOrg.ListItem(name: "Apps", position: 2)),
        ]
        #expect(
            `SchemaOrg Tests`.text(JSONLD.Document(list))
                == #"{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","name":"Home","position":1},{"@type":"ListItem","name":"Apps","position":2}]}"#
        )
        #expect(list[.itemListElement].count == 2)
        #expect(list.itemListElement == list[.itemListElement].first)
    }

    @Test
    func `enumeration members write as schema.org IRIs`() {
        let offer = SchemaOrg.Offer(availability: .inStock, itemCondition: .newCondition)
        #expect(
            `SchemaOrg Tests`.text(JSONLD.Document(offer))
                == #"{"@context":"https://schema.org","@type":"Offer","availability":"https://schema.org/InStock","itemCondition":"https://schema.org/NewCondition"}"#
        )
    }

    @Test
    func `data types are Swift values`() throws {
        let event = SchemaOrg.Event(
            name: "Launch",
            duration: .duration(try ISO_8601.Duration("PT1H30M")),
            isAccessibleForFree: true,
            maximumAttendeeCapacity: 100,
            startDate: .date(try #require(ISO_8601.CalendarDate(extended: "2026-11-10")))
        )
        #expect(
            `SchemaOrg Tests`.text(JSONLD.Document(event))
                == #"{"@context":"https://schema.org","@type":"Event","name":"Launch","duration":"PT1H30M","isAccessibleForFree":true,"maximumAttendeeCapacity":100,"startDate":"2026-11-10"}"#
        )
    }

    @Test
    func `a document reads back into types`() throws {
        let document = try `SchemaOrg Tests`.document(
            #"{"@context":"http://schema.org","@graph":[{"@type":"SoftwareApplication","name":"Laurie","offers":{"@type":"Offer","price":"0","itemCondition":"http://schema.org/NewCondition"}},{"@type":"Person","name":"Coen"}]}"#
        )
        let apps = try SchemaOrg.SoftwareApplication.instances(in: document)
        #expect(apps.map(\.name) == ["Laurie"])
        guard case .offer(let offer) = apps.first?.offers else {
            Issue.record("the offer should read as an Offer")
            return
        }
        #expect(offer.price == .number(0))
        #expect(offer.itemCondition == .newCondition)
        #expect(try SchemaOrg.Thing.instances(in: document).count == 2)
    }

    @Test
    func `prefixed names, full IRIs and aliases read the same`() throws {
        let document = try `SchemaOrg Tests`.document(
            #"{"@context":["https://schema.org/docs/jsonldcontext.jsonld",{"s":"https://schema.org/"}],"type":"s:Book","https://schema.org/name":"Wet","s:author":{"@type":"Person","name":"A"},"https://example.com/extra":1}"#
        )
        let book = try #require(try SchemaOrg.Book.instances(in: document).first)
        #expect(book.name == "Wet")
        guard case .person(let person) = book.author else {
            Issue.record("the author should read as a Person")
            return
        }
        #expect(person.name == "A")
        #expect(book.node["https://example.com/extra"] == [.number(RFC_8259.Number(1))])
    }
}

extension `SchemaOrg Tests`.Test.`Edge Case` {

    @Test
    func `enumeration members read from every spelling`() {
        for text in ["https://schema.org/InStock", "http://schema.org/InStock", "schema:InStock", "InStock"] {
            #expect(SchemaOrg.ItemAvailability.deserialize(.string(text)) == .inStock)
        }
        #expect(SchemaOrg.ItemAvailability.deserialize(.reference("https://schema.org/InStock")) == .inStock)
        #expect(SchemaOrg.ItemAvailability.deserialize(.string("Somewhere")) == nil)
    }

    @Test
    func `sub-enumerations and described instances are cases`() {
        let size = W3C_JSON_LD.Value.node(W3C_JSON_LD.Node(types: ["SizeSpecification"], properties: [.init("name", [.string("M")])]))
        guard case .sizeSpecification(.instance(let specification)) = SchemaOrg.QualitativeValue.deserialize(size) else {
            Issue.record("a SizeSpecification should read as that sub-enumeration's instance")
            return
        }
        #expect(specification.name == "M")
        #expect(
            SchemaOrg.SizeGroupEnumeration.deserialize(.string("https://schema.org/WearableSizeGroupBig"))
                == .wearableSizeGroupEnumeration(.wearableSizeGroupBig)
        )
    }

    @Test
    func `values that do not fit the range read as nil and stay in the node`() {
        var app = SchemaOrg.SoftwareApplication(name: "Laurie")
        app.node["datePublished"] = [.string("last week")]
        #expect(app.datePublished == nil)
        #expect(app.node["datePublished"] == [.string("last week")])
        app.name = nil
        #expect(app.node["name"].isEmpty)
    }

    @Test
    func `a range reads its most specific choice first`() {
        #expect(SchemaOrg.Range.Price.deserialize(.string("9.99")) == .number(9.99))
        #expect(SchemaOrg.Range.Price.deserialize(.string("free")) == .text("free"))
        #expect(SchemaOrg.Range.Author.deserialize(.reference("https://rule.law/#org")) == .organization(SchemaOrg.Organization(node: W3C_JSON_LD.Node(id: "https://rule.law/#org"))))
        #expect(SchemaOrg.Range.Position.deserialize(.string("3")) == .integer(3))
    }

    @Test
    func `booleans and numbers read from their schema.org spellings`() {
        #expect(Bool.deserialize(.string("https://schema.org/True")) == true)
        #expect(Bool.deserialize(.string("False")) == false)
        #expect(Int.deserialize(.string("12")) == 12)
        #expect(Int.deserialize(.number(RFC_8259.Number(1.5))) == nil)
        #expect(Double.serialize(2) == .number(RFC_8259.Number(2)))
    }

    @Test
    func `literals build ranges with text and numbers`() {
        let price: SchemaOrg.Range.Price = 12
        let name: SchemaOrg.Range.OperatingSystem = "Linux"
        #expect(price == .number(12))
        #expect(name == .linux)
    }
}

extension `SchemaOrg Tests`.Test.`Edge Case` {

    @Test
    func `properties without an accessor stay in the node`() throws {
        let document = try `SchemaOrg Tests`.document(#"{"@context":"https://schema.org","@type":"VideoObject","name":"Demo","interactionCount":"5"}"#)
        let video = try #require(try SchemaOrg.VideoObject.instances(in: document).first)
        #expect(video.node["interactionCount"] == [.string("5")])
        #expect(`SchemaOrg Tests`.text(JSONLD.Document(video)).contains(#""interactionCount":"5""#))
    }
}
