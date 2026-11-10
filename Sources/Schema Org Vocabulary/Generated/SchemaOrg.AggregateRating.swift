extension SchemaOrg {

    public struct AggregateRating: SchemaOrg.AggregateRating.`Protocol`, Swift.Hashable {

        public static let type = "AggregateRating"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.AggregateRating {

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
        itemReviewed: SchemaOrg.Thing? = nil,
        ratingCount: Swift.Int? = nil,
        reviewCount: Swift.Int? = nil,
        author: SchemaOrg.Range.Author? = nil,
        bestRating: SchemaOrg.Range.BestRating? = nil,
        ratingExplanation: Swift.String? = nil,
        ratingValue: SchemaOrg.Range.RatingValue? = nil,
        reviewAspect: SchemaOrg.Range.ReviewAspect? = nil,
        worstRating: SchemaOrg.Range.WorstRating? = nil
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
        self.itemReviewed = itemReviewed
        self.ratingCount = ratingCount
        self.reviewCount = reviewCount
        self.author = author
        self.bestRating = bestRating
        self.ratingExplanation = ratingExplanation
        self.ratingValue = ratingValue
        self.reviewAspect = reviewAspect
        self.worstRating = worstRating
    }
}
