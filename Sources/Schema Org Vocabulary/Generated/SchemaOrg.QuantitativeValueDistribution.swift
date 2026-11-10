extension SchemaOrg {

    public struct QuantitativeValueDistribution: SchemaOrg.QuantitativeValueDistribution.`Protocol`, Swift.Hashable {

        public static let type = "QuantitativeValueDistribution"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.QuantitativeValueDistribution {

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
        duration: SchemaOrg.Range.Duration? = nil,
        median: Swift.Double? = nil,
        percentile10: Swift.Double? = nil,
        percentile25: Swift.Double? = nil,
        percentile75: Swift.Double? = nil,
        percentile90: Swift.Double? = nil
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
        self.duration = duration
        self.median = median
        self.percentile10 = percentile10
        self.percentile25 = percentile25
        self.percentile75 = percentile75
        self.percentile90 = percentile90
    }
}
