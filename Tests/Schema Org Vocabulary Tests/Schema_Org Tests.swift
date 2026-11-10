import Schema_Org_Vocabulary
import Testing

enum `Schema_Org Tests` {}

extension `Schema_Org Tests` {
    @Suite struct Test {
        @Suite struct Unit {}
        @Suite struct `Edge Case` {}
    }
}

extension `Schema_Org Tests` {

    static func text(_ node: SchemaOrg.Node) -> String {
        String(decoding: JSONLD.Document(node).bytes, as: UTF8.self)
    }

    static func document(_ text: String) throws(W3C_JSON_LD.Error) -> W3C_JSON_LD.Document {
        try W3C_JSON_LD.Document(parsing: Array(text.utf8))
    }

    static func uri(_ text: String) throws(RFC_3986.Error) -> RFC_3986.URI {
        try RFC_3986.URI(text)
    }
}

extension `Schema_Org Tests`.Test.Unit {

    @Test
    func `the vocabulary is schema.org 30.1`() {
        #expect(SchemaOrg.version == "30.1")
    }

    @Test
    func `an application writes as JSON-LD with the schema.org context`() throws {
        let app = SchemaOrg.Node.softwareApplication(
            .name("Laurie"),
            .url(.url(try `Schema_Org Tests`.uri("https://rule.law/apps/laurie"))),
            .operatingSystem("macOS"),
            .offers(.offer(.price(0)))
        )
        #expect(
            `Schema_Org Tests`.text(app)
                == #"{"@context":"https://schema.org","@type":"SoftwareApplication","name":"Laurie","url":"https://rule.law/apps/laurie","operatingSystem":"macOS","offers":{"@type":"Offer","price":0}}"#
        )
    }

    @Test
    func `a property takes several values, in order`() {
        let list = SchemaOrg.Node.breadcrumbList(
            .itemListElement(.listItem(.name("Home"), .position(1)), .listItem(.name("Apps"), .position(2)))
        )
        #expect(
            `Schema_Org Tests`.text(list)
                == #"{"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","name":"Home","position":1},{"@type":"ListItem","name":"Apps","position":2}]}"#
        )
        #expect(list[.itemListElement].compactMap { $0.node?[.position].first?.integer } == [1, 2])
    }

    @Test
    func `enumeration members write as schema.org IRIs`() {
        let offer = SchemaOrg.Node.offer(.availability(.member(.inStock)), .itemCondition(.member(.newCondition)))
        #expect(
            `Schema_Org Tests`.text(offer)
                == #"{"@context":"https://schema.org","@type":"Offer","availability":"https://schema.org/InStock","itemCondition":"https://schema.org/NewCondition"}"#
        )
    }

    @Test
    func `data types write as their JSON-LD forms`() throws {
        let event = SchemaOrg.Node.event(
            .name("Launch"),
            .duration(.duration(try ISO_8601.Duration("PT1H30M"))),
            .isAccessibleForFree(SchemaOrg.Value(true)),
            .maximumAttendeeCapacity(100),
            .startDate(.date(try #require(ISO_8601.CalendarDate(extended: "2026-11-10"))))
        )
        #expect(
            `Schema_Org Tests`.text(event)
                == #"{"@context":"https://schema.org","@type":"Event","name":"Launch","duration":"PT1H30M","isAccessibleForFree":true,"maximumAttendeeCapacity":100,"startDate":"2026-11-10"}"#
        )
    }

    @Test
    func `a document reads back into nodes and values`() throws {
        let document = try `Schema_Org Tests`.document(
            #"{"@context":"http://schema.org","@graph":[{"@type":"SoftwareApplication","name":"Laurie","offers":{"@type":"Offer","price":"0","itemCondition":"http://schema.org/NewCondition"}},{"@type":"Person","name":"Coen"}]}"#
        )
        let apps = try SchemaOrg.Node.instances(of: .softwareApplication, in: document)
        #expect(apps.map { $0[.name].first?.text } == ["Laurie"])
        let offer = try #require(apps.first?[.offers].first?.node)
        #expect(offer.isInstance(of: .offer))
        #expect(offer[.price].first?.number == 0)
        #expect(offer[.itemCondition].first?.member == .newCondition)
        #expect(try SchemaOrg.Node.instances(of: .thing, in: document).count == 2)
        #expect(try SchemaOrg.Node.instances(of: .creativeWork, in: document).count == 1)
    }

    @Test
    func `prefixed names, full IRIs and aliases read the same`() throws {
        let document = try `Schema_Org Tests`.document(
            #"{"@context":["https://schema.org/docs/jsonldcontext.jsonld",{"s":"https://schema.org/"}],"type":"s:Book","https://schema.org/name":"Wet","s:author":{"@type":"Person","name":"A"},"https://example.com/extra":1}"#
        )
        let book = try #require(try SchemaOrg.Node.instances(of: .book, in: document).first)
        #expect(book[.name].first?.text == "Wet")
        #expect(book[.author].first?.node?.classes == [.person])
        #expect(book.node["https://example.com/extra"] == [.number(RFC_8259.Number(1))])
    }

    @Test
    func `the vocabulary carries schema.org's hierarchy, domains and ranges`() {
        #expect(SchemaOrg.Class.softwareApplication.parents == [.creativeWork])
        #expect(SchemaOrg.Class.softwareApplication.isSubclass(of: .thing))
        #expect(!SchemaOrg.Class.person.isSubclass(of: .creativeWork))
        #expect(SchemaOrg.Class.dentist.parents == [.localBusiness, .medicalBusiness, .medicalOrganization])
        #expect(SchemaOrg.Property.offers.ranges == [.demand, .offer])
        #expect(SchemaOrg.Property.offers.domains.contains(.creativeWork))
        #expect(SchemaOrg.Member.radiography.classes == [.medicalImagingTechnique, .medicalSpecialty])
        #expect(SchemaOrg.Class.url.parents == [.text])
    }
}

extension `Schema_Org Tests`.Test.`Edge Case` {

    @Test
    func `members read from every spelling`() {
        for text in ["https://schema.org/InStock", "http://schema.org/InStock", "schema:InStock", "InStock"] {
            #expect(SchemaOrg.Value(text).member == .inStock)
        }
        #expect(SchemaOrg.Value(.reference("https://schema.org/InStock")).member == .inStock)
        #expect(SchemaOrg.Value("Somewhere").member == nil)
    }

    @Test
    func `booleans and numbers read from their schema.org spellings`() {
        #expect(SchemaOrg.Value("https://schema.org/True").boolean == true)
        #expect(SchemaOrg.Value("False").boolean == false)
        #expect(SchemaOrg.Value("12").integer == 12)
        #expect(SchemaOrg.Value(1.5).integer == nil)
        #expect(SchemaOrg.Value(2.0) == SchemaOrg.Value(2))
        #expect(SchemaOrg.Value(9.5).number == 9.5)
        #expect(SchemaOrg.Value("last week").date == nil)
    }

    @Test
    func `terms outside the vocabulary are kept as they are`() {
        let type = SchemaOrg.Class.named("Spaceship")
        #expect(type.term == "Spaceship")
        #expect(type.parents.isEmpty)
        #expect(SchemaOrg.Class.named("SoftwareApplication").parents == [.creativeWork])
        var node = SchemaOrg.Node(type, [SchemaOrg.Assignment(SchemaOrg.Property("warpFactor"), [9])])
        node[.name] = ["Enterprise"]
        #expect(`Schema_Org Tests`.text(node) == #"{"@context":"https://schema.org","@type":"Spaceship","warpFactor":9,"name":"Enterprise"}"#)
        node[.name] = []
        #expect(node.node["name"].isEmpty)
    }

    @Test
    func `findings report properties outside their domain and values outside their range`() {
        let person = SchemaOrg.Node.person(.name("Coen"), .operatingSystem("macOS"), .knows(.offer()))
        #expect(
            person.findings == [
                SchemaOrg.Finding(property: .operatingSystem, kind: .domain),
                SchemaOrg.Finding(property: .knows, kind: .range(.offer())),
            ]
        )
        let app = SchemaOrg.Node.softwareApplication(
            .name("Laurie"),
            .operatingSystem("macOS"),
            .offers(.offer(.price("0"))),
            .author(.person(.name("Coen")), SchemaOrg.Value(.reference("https://rule.law/#org"))),
            .isAccessibleForFree(SchemaOrg.Value(true)),
            .availableOnDevice(.member(.true))
        )
        #expect(app.findings.isEmpty)
        #expect(
            SchemaOrg.Node.event(.maximumAttendeeCapacity("many")).findings
                == [SchemaOrg.Finding(property: .maximumAttendeeCapacity, kind: .range("many"))]
        )
    }
}
