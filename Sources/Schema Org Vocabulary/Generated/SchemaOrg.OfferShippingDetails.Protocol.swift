extension SchemaOrg.OfferShippingDetails {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.DeliveryTime,
        SchemaOrg.Domain.Depth,
        SchemaOrg.Domain.DoesNotShip,
        SchemaOrg.Domain.HasShippingService,
        SchemaOrg.Domain.Height,
        SchemaOrg.Domain.Provider,
        SchemaOrg.Domain.ShippingDestination,
        SchemaOrg.Domain.ShippingLabel,
        SchemaOrg.Domain.ShippingOrigin,
        SchemaOrg.Domain.ShippingRate,
        SchemaOrg.Domain.TransitTimeLabel,
        SchemaOrg.Domain.ValidForMemberTier,
        SchemaOrg.Domain.Weight,
        SchemaOrg.Domain.Width
    {}
}

extension SchemaOrg.OfferShippingDetails.`Protocol` {

    public var shippingSettingsLink: RFC_3986.URI? {
        get { self[first: "shippingSettingsLink"] }
        set { self[first: "shippingSettingsLink"] = newValue }
    }
}
