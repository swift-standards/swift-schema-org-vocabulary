extension SchemaOrg {

    public struct PropertyValueSpecification: SchemaOrg.PropertyValueSpecification.`Protocol`, Swift.Hashable {

        public static let type = "PropertyValueSpecification"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.PropertyValueSpecification {

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
        defaultValue: SchemaOrg.Range.DefaultValue? = nil,
        maxValue: Swift.Double? = nil,
        minValue: Swift.Double? = nil,
        multipleValues: Swift.Bool? = nil,
        readonlyValue: Swift.Bool? = nil,
        stepValue: Swift.Double? = nil,
        valueMaxLength: Swift.Double? = nil,
        valueMinLength: Swift.Double? = nil,
        valueName: Swift.String? = nil,
        valuePattern: Swift.String? = nil,
        valueRequired: Swift.Bool? = nil
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
        self.defaultValue = defaultValue
        self.maxValue = maxValue
        self.minValue = minValue
        self.multipleValues = multipleValues
        self.readonlyValue = readonlyValue
        self.stepValue = stepValue
        self.valueMaxLength = valueMaxLength
        self.valueMinLength = valueMinLength
        self.valueName = valueName
        self.valuePattern = valuePattern
        self.valueRequired = valueRequired
    }
}
