extension SchemaOrg {

    public struct GeoShape: SchemaOrg.GeoShape.`Protocol`, Swift.Hashable {

        public static let type = "GeoShape"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.GeoShape {

    public init(
        id: Swift.String? = nil,
        additionalType: SchemaOrg.Range.AdditionalType? = nil,
        alternateName: Swift.String? = nil,
        description: SchemaOrg.Range.Description? = nil,
        disambiguatingDescription: Swift.String? = nil,
        identifier: SchemaOrg.Range.Identifier? = nil,
        image: SchemaOrg.Range.Image? = nil,
        mainEntityOfPage: SchemaOrg.Range.MainEntityOfPage? = nil,
        name: Swift.String? = nil,
        owner: SchemaOrg.Range.Owner? = nil,
        potentialAction: SchemaOrg.Action? = nil,
        sameAs: RFC_3986.URI? = nil,
        subjectOf: SchemaOrg.Range.SubjectOf? = nil,
        url: RFC_3986.URI? = nil,
        address: SchemaOrg.Range.Address? = nil,
        addressCountry: SchemaOrg.Range.AddressCountry? = nil,
        box: Swift.String? = nil,
        circle: Swift.String? = nil,
        elevation: SchemaOrg.Range.Elevation? = nil,
        line: Swift.String? = nil,
        polygon: Swift.String? = nil,
        postalCode: Swift.String? = nil
    ) {
        self.init(node: W3C_JSON_LD.Node(id: id, types: [Self.type]))
        self.additionalType = additionalType
        self.alternateName = alternateName
        self.description = description
        self.disambiguatingDescription = disambiguatingDescription
        self.identifier = identifier
        self.image = image
        self.mainEntityOfPage = mainEntityOfPage
        self.name = name
        self.owner = owner
        self.potentialAction = potentialAction
        self.sameAs = sameAs
        self.subjectOf = subjectOf
        self.url = url
        self.address = address
        self.addressCountry = addressCountry
        self.box = box
        self.circle = circle
        self.elevation = elevation
        self.line = line
        self.polygon = polygon
        self.postalCode = postalCode
    }
}
