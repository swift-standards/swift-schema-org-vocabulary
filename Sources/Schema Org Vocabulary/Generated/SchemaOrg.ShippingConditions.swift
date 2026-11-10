extension SchemaOrg {

    public struct ShippingConditions: SchemaOrg.ShippingConditions.`Protocol`, Swift.Hashable {

        public static let type = "ShippingConditions"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ShippingConditions {

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
        depth: SchemaOrg.Range.Depth? = nil,
        doesNotShip: Swift.Bool? = nil,
        height: SchemaOrg.Range.Height? = nil,
        numItems: SchemaOrg.QuantitativeValue? = nil,
        orderValue: SchemaOrg.MonetaryAmount? = nil,
        seasonalOverride: SchemaOrg.OpeningHoursSpecification? = nil,
        shippingDestination: SchemaOrg.DefinedRegion? = nil,
        shippingOrigin: SchemaOrg.DefinedRegion? = nil,
        shippingRate: SchemaOrg.Range.ShippingRate? = nil,
        transitTime: SchemaOrg.Range.TransitTime? = nil,
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
        self.depth = depth
        self.doesNotShip = doesNotShip
        self.height = height
        self.numItems = numItems
        self.orderValue = orderValue
        self.seasonalOverride = seasonalOverride
        self.shippingDestination = shippingDestination
        self.shippingOrigin = shippingOrigin
        self.shippingRate = shippingRate
        self.transitTime = transitTime
        self.weight = weight
        self.width = width
    }
}
