extension SchemaOrg.Domain {

    public protocol DeliveryLeadTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DeliveryLeadTime {

    public var deliveryLeadTime: SchemaOrg.QuantitativeValue? {
        get { self[first: "deliveryLeadTime"] }
        set { self[first: "deliveryLeadTime"] = newValue }
    }
}
