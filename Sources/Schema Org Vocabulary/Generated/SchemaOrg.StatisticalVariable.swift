extension SchemaOrg {

    public struct StatisticalVariable: SchemaOrg.StatisticalVariable.`Protocol`, Swift.Hashable {

        public static let type = "StatisticalVariable"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.StatisticalVariable {

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
        measuredProperty: SchemaOrg.Property? = nil,
        measurementDenominator: SchemaOrg.StatisticalVariable? = nil,
        measurementMethod: SchemaOrg.Range.MeasurementMethod? = nil,
        measurementQualifier: SchemaOrg.Enumeration? = nil,
        measurementTechnique: SchemaOrg.Range.MeasurementTechnique? = nil,
        populationType: SchemaOrg.Class? = nil,
        statType: SchemaOrg.Range.StatType? = nil,
        constraintProperty: SchemaOrg.Range.ConstraintProperty? = nil,
        numConstraints: Swift.Int? = nil
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
        self.measuredProperty = measuredProperty
        self.measurementDenominator = measurementDenominator
        self.measurementMethod = measurementMethod
        self.measurementQualifier = measurementQualifier
        self.measurementTechnique = measurementTechnique
        self.populationType = populationType
        self.statType = statType
        self.constraintProperty = constraintProperty
        self.numConstraints = numConstraints
    }
}
