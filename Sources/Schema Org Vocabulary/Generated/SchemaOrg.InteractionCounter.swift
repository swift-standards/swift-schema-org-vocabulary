extension SchemaOrg {

    public struct InteractionCounter: SchemaOrg.InteractionCounter.`Protocol`, Swift.Hashable {

        public static let type = "InteractionCounter"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.InteractionCounter {

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
        endTime: SchemaOrg.Range.EndTime? = nil,
        interactionService: SchemaOrg.Range.InteractionService? = nil,
        interactionType: SchemaOrg.Action? = nil,
        location: SchemaOrg.Range.Location? = nil,
        startTime: SchemaOrg.Range.StartTime? = nil,
        userInteractionCount: Swift.Int? = nil
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
        self.endTime = endTime
        self.interactionService = interactionService
        self.interactionType = interactionType
        self.location = location
        self.startTime = startTime
        self.userInteractionCount = userInteractionCount
    }
}
