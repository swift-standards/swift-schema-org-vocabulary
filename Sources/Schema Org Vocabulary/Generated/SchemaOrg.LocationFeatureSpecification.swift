extension SchemaOrg {

    public struct LocationFeatureSpecification: SchemaOrg.LocationFeatureSpecification.`Protocol`, Swift.Hashable {

        public static let type = "LocationFeatureSpecification"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.LocationFeatureSpecification {

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
        hoursAvailable: SchemaOrg.OpeningHoursSpecification? = nil,
        validFrom: SchemaOrg.Range.ValidFrom? = nil,
        validThrough: SchemaOrg.Range.ValidThrough? = nil,
        maxValue: Swift.Double? = nil,
        measurementMethod: SchemaOrg.Range.MeasurementMethod? = nil,
        measurementTechnique: SchemaOrg.Range.MeasurementTechnique? = nil,
        minValue: Swift.Double? = nil,
        propertyID: SchemaOrg.Range.PropertyID? = nil,
        unitCode: SchemaOrg.Range.UnitCode? = nil,
        unitText: Swift.String? = nil,
        value: SchemaOrg.Range.Value? = nil,
        valueGroup: Swift.String? = nil,
        valueReference: SchemaOrg.Range.ValueReference? = nil
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
        self.hoursAvailable = hoursAvailable
        self.validFrom = validFrom
        self.validThrough = validThrough
        self.maxValue = maxValue
        self.measurementMethod = measurementMethod
        self.measurementTechnique = measurementTechnique
        self.minValue = minValue
        self.propertyID = propertyID
        self.unitCode = unitCode
        self.unitText = unitText
        self.value = value
        self.valueGroup = valueGroup
        self.valueReference = valueReference
    }
}
