extension SchemaOrg {

    public struct EngineSpecification: SchemaOrg.EngineSpecification.`Protocol`, Swift.Hashable {

        public static let type = "EngineSpecification"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.EngineSpecification {

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
        engineDisplacement: SchemaOrg.QuantitativeValue? = nil,
        enginePower: SchemaOrg.QuantitativeValue? = nil,
        engineType: SchemaOrg.Range.EngineType? = nil,
        fuelType: SchemaOrg.Range.FuelType? = nil,
        torque: SchemaOrg.QuantitativeValue? = nil
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
        self.engineDisplacement = engineDisplacement
        self.enginePower = enginePower
        self.engineType = engineType
        self.fuelType = fuelType
        self.torque = torque
    }
}
