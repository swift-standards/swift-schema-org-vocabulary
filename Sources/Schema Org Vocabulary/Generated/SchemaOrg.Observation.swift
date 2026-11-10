extension SchemaOrg {

    public struct Observation: SchemaOrg.Observation.`Protocol`, Swift.Hashable {

        public static let type = "Observation"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Observation {

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
        marginOfError: SchemaOrg.QuantitativeValue? = nil,
        measuredProperty: SchemaOrg.Property? = nil,
        measurementDenominator: SchemaOrg.StatisticalVariable? = nil,
        measurementMethod: SchemaOrg.Range.MeasurementMethod? = nil,
        measurementQualifier: SchemaOrg.Enumeration? = nil,
        measurementTechnique: SchemaOrg.Range.MeasurementTechnique? = nil,
        observationAbout: SchemaOrg.Range.ObservationAbout? = nil,
        observationDate: SchemaOrg.Range.ObservationDate? = nil,
        observationPeriod: Swift.String? = nil,
        variableMeasured: SchemaOrg.Range.VariableMeasured? = nil,
        additionalProperty: SchemaOrg.PropertyValue? = nil,
        maxValue: Swift.Double? = nil,
        minValue: Swift.Double? = nil,
        unitCode: SchemaOrg.Range.UnitCode? = nil,
        unitText: Swift.String? = nil,
        value: SchemaOrg.Range.Value? = nil,
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
        self.marginOfError = marginOfError
        self.measuredProperty = measuredProperty
        self.measurementDenominator = measurementDenominator
        self.measurementMethod = measurementMethod
        self.measurementQualifier = measurementQualifier
        self.measurementTechnique = measurementTechnique
        self.observationAbout = observationAbout
        self.observationDate = observationDate
        self.observationPeriod = observationPeriod
        self.variableMeasured = variableMeasured
        self.additionalProperty = additionalProperty
        self.maxValue = maxValue
        self.minValue = minValue
        self.unitCode = unitCode
        self.unitText = unitText
        self.value = value
        self.valueReference = valueReference
    }
}
