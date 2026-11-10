extension SchemaOrg {

    public struct ShippingRateSettings: SchemaOrg.ShippingRateSettings.`Protocol`, Swift.Hashable {

        public static let type = "ShippingRateSettings"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ShippingRateSettings {

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
        doesNotShip: Swift.Bool? = nil,
        freeShippingThreshold: SchemaOrg.Range.FreeShippingThreshold? = nil,
        isUnlabelledFallback: Swift.Bool? = nil,
        minimumOrderValue: SchemaOrg.Range.MinimumOrderValue? = nil,
        orderPercentage: Swift.Double? = nil,
        shippingDestination: SchemaOrg.DefinedRegion? = nil,
        shippingLabel: Swift.String? = nil,
        shippingRate: SchemaOrg.Range.ShippingRate? = nil,
        weightPercentage: Swift.Double? = nil
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
        self.doesNotShip = doesNotShip
        self.freeShippingThreshold = freeShippingThreshold
        self.isUnlabelledFallback = isUnlabelledFallback
        self.minimumOrderValue = minimumOrderValue
        self.orderPercentage = orderPercentage
        self.shippingDestination = shippingDestination
        self.shippingLabel = shippingLabel
        self.shippingRate = shippingRate
        self.weightPercentage = weightPercentage
    }
}
