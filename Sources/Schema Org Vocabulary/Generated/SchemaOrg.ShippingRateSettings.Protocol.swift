extension SchemaOrg.ShippingRateSettings {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.DoesNotShip,
        SchemaOrg.Domain.IsUnlabelledFallback,
        SchemaOrg.Domain.ShippingDestination,
        SchemaOrg.Domain.ShippingLabel,
        SchemaOrg.Domain.ShippingRate
    {}
}

extension SchemaOrg.ShippingRateSettings.`Protocol` {

    public var freeShippingThreshold: SchemaOrg.Range.FreeShippingThreshold? {
        get { self[first: "freeShippingThreshold"] }
        set { self[first: "freeShippingThreshold"] = newValue }
    }

    public var minimumOrderValue: SchemaOrg.Range.MinimumOrderValue? {
        get { self[first: "minimumOrderValue"] }
        set { self[first: "minimumOrderValue"] = newValue }
    }

    public var orderPercentage: Swift.Double? {
        get { self[first: "orderPercentage"] }
        set { self[first: "orderPercentage"] = newValue }
    }

    public var weightPercentage: Swift.Double? {
        get { self[first: "weightPercentage"] }
        set { self[first: "weightPercentage"] = newValue }
    }
}
