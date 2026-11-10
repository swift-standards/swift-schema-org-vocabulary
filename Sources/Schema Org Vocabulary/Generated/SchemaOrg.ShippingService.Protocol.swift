extension SchemaOrg.ShippingService {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.HandlingTime,
        SchemaOrg.Domain.ValidForMemberTier
    {}
}

extension SchemaOrg.ShippingService.`Protocol` {

    public var fulfillmentType: SchemaOrg.FulfillmentTypeEnumeration? {
        get { self[first: "fulfillmentType"] }
        set { self[first: "fulfillmentType"] = newValue }
    }

    public var shippingConditions: SchemaOrg.ShippingConditions? {
        get { self[first: "shippingConditions"] }
        set { self[first: "shippingConditions"] = newValue }
    }
}
