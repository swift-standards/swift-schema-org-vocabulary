extension SchemaOrg.SteeringPositionValue {

    public struct Instance: SchemaOrg.SteeringPositionValue.`Protocol`, Swift.Hashable {

        public static let type = "SteeringPositionValue"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.SteeringPositionValue.Instance {

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
        additionalProperty: SchemaOrg.PropertyValue? = nil,
        equal: SchemaOrg.QualitativeValue? = nil,
        greater: SchemaOrg.QualitativeValue? = nil,
        greaterOrEqual: SchemaOrg.QualitativeValue? = nil,
        lesser: SchemaOrg.QualitativeValue? = nil,
        lesserOrEqual: SchemaOrg.QualitativeValue? = nil,
        nonEqual: SchemaOrg.QualitativeValue? = nil,
        valueReference: SchemaOrg.Range.ValueReference? = nil,
        supersededBy: SchemaOrg.Range.SupersededBy? = nil
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
        self.additionalProperty = additionalProperty
        self.equal = equal
        self.greater = greater
        self.greaterOrEqual = greaterOrEqual
        self.lesser = lesser
        self.lesserOrEqual = lesserOrEqual
        self.nonEqual = nonEqual
        self.valueReference = valueReference
        self.supersededBy = supersededBy
    }
}
