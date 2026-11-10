extension SchemaOrg.ShippingConditions {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.Depth,
        SchemaOrg.Domain.DoesNotShip,
        SchemaOrg.Domain.Height,
        SchemaOrg.Domain.ShippingDestination,
        SchemaOrg.Domain.ShippingOrigin,
        SchemaOrg.Domain.ShippingRate,
        SchemaOrg.Domain.TransitTime,
        SchemaOrg.Domain.Weight,
        SchemaOrg.Domain.Width
    {}
}

extension SchemaOrg.ShippingConditions.`Protocol` {

    public var numItems: SchemaOrg.QuantitativeValue? {
        get { self[first: "numItems"] }
        set { self[first: "numItems"] = newValue }
    }

    public var orderValue: SchemaOrg.MonetaryAmount? {
        get { self[first: "orderValue"] }
        set { self[first: "orderValue"] = newValue }
    }

    public var seasonalOverride: SchemaOrg.OpeningHoursSpecification? {
        get { self[first: "seasonalOverride"] }
        set { self[first: "seasonalOverride"] = newValue }
    }
}
