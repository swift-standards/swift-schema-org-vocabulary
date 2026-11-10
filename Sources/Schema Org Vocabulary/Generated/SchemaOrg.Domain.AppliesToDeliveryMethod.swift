extension SchemaOrg.Domain {

    public protocol AppliesToDeliveryMethod: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AppliesToDeliveryMethod {

    public var appliesToDeliveryMethod: SchemaOrg.DeliveryMethod? {
        get { self[first: "appliesToDeliveryMethod"] }
        set { self[first: "appliesToDeliveryMethod"] = newValue }
    }
}
