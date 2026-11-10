extension SchemaOrg.UnitPriceSpecification {

    public protocol `Protocol`:
        SchemaOrg.PriceSpecification.`Protocol`,
        SchemaOrg.Domain.PriceType,
        SchemaOrg.Domain.UnitCode,
        SchemaOrg.Domain.UnitText
    {}
}

extension SchemaOrg.UnitPriceSpecification.`Protocol` {

    public var billingDuration: SchemaOrg.Range.BillingDuration? {
        get { self[first: "billingDuration"] }
        set { self[first: "billingDuration"] = newValue }
    }

    public var billingIncrement: Swift.Double? {
        get { self[first: "billingIncrement"] }
        set { self[first: "billingIncrement"] = newValue }
    }

    public var billingStart: Swift.Double? {
        get { self[first: "billingStart"] }
        set { self[first: "billingStart"] = newValue }
    }

    public var priceComponentType: SchemaOrg.PriceComponentTypeEnumeration? {
        get { self[first: "priceComponentType"] }
        set { self[first: "priceComponentType"] = newValue }
    }

    public var referenceQuantity: SchemaOrg.QuantitativeValue? {
        get { self[first: "referenceQuantity"] }
        set { self[first: "referenceQuantity"] = newValue }
    }
}
