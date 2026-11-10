extension SchemaOrg {

    public struct RadioChannel: SchemaOrg.RadioChannel.`Protocol`, Swift.Hashable {

        public static let type = "RadioChannel"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.RadioChannel {

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
        broadcastChannelId: Swift.String? = nil,
        broadcastFrequency: SchemaOrg.Range.BroadcastFrequency? = nil,
        broadcastServiceTier: Swift.String? = nil,
        genre: SchemaOrg.Range.Genre? = nil,
        inBroadcastLineup: SchemaOrg.CableOrSatelliteService? = nil,
        providesBroadcastService: SchemaOrg.BroadcastService? = nil
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
        self.broadcastChannelId = broadcastChannelId
        self.broadcastFrequency = broadcastFrequency
        self.broadcastServiceTier = broadcastServiceTier
        self.genre = genre
        self.inBroadcastLineup = inBroadcastLineup
        self.providesBroadcastService = providesBroadcastService
    }
}
