extension SchemaOrg {

    public struct ActionAccessSpecification: SchemaOrg.ActionAccessSpecification.`Protocol`, Swift.Hashable {

        public static let type = "ActionAccessSpecification"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ActionAccessSpecification {

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
        availabilityEnds: SchemaOrg.Range.AvailabilityEnds? = nil,
        availabilityStarts: SchemaOrg.Range.AvailabilityStarts? = nil,
        category: SchemaOrg.Range.Category? = nil,
        eligibleRegion: SchemaOrg.Range.EligibleRegion? = nil,
        expectsAcceptanceOf: SchemaOrg.Offer? = nil,
        ineligibleRegion: SchemaOrg.Range.IneligibleRegion? = nil,
        requiresSubscription: SchemaOrg.Range.RequiresSubscription? = nil
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
        self.availabilityEnds = availabilityEnds
        self.availabilityStarts = availabilityStarts
        self.category = category
        self.eligibleRegion = eligibleRegion
        self.expectsAcceptanceOf = expectsAcceptanceOf
        self.ineligibleRegion = ineligibleRegion
        self.requiresSubscription = requiresSubscription
    }
}
