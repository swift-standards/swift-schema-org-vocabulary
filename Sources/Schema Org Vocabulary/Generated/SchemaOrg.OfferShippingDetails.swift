extension SchemaOrg {

    public struct OfferShippingDetails: SchemaOrg.OfferShippingDetails.`Protocol`, Swift.Hashable {

        public static let type = "OfferShippingDetails"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.OfferShippingDetails {

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
        deliveryTime: SchemaOrg.ShippingDeliveryTime? = nil,
        depth: SchemaOrg.Range.Depth? = nil,
        doesNotShip: Swift.Bool? = nil,
        hasShippingService: SchemaOrg.ShippingService? = nil,
        height: SchemaOrg.Range.Height? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        shippingDestination: SchemaOrg.DefinedRegion? = nil,
        shippingLabel: Swift.String? = nil,
        shippingOrigin: SchemaOrg.DefinedRegion? = nil,
        shippingRate: SchemaOrg.Range.ShippingRate? = nil,
        shippingSettingsLink: RFC_3986.URI? = nil,
        transitTimeLabel: Swift.String? = nil,
        validForMemberTier: SchemaOrg.MemberProgramTier? = nil,
        weight: SchemaOrg.Range.Weight? = nil,
        width: SchemaOrg.Range.Width? = nil
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
        self.deliveryTime = deliveryTime
        self.depth = depth
        self.doesNotShip = doesNotShip
        self.hasShippingService = hasShippingService
        self.height = height
        self.provider = provider
        self.shippingDestination = shippingDestination
        self.shippingLabel = shippingLabel
        self.shippingOrigin = shippingOrigin
        self.shippingRate = shippingRate
        self.shippingSettingsLink = shippingSettingsLink
        self.transitTimeLabel = transitTimeLabel
        self.validForMemberTier = validForMemberTier
        self.weight = weight
        self.width = width
    }
}
