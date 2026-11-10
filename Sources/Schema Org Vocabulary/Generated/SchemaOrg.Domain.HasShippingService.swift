extension SchemaOrg.Domain {

    public protocol HasShippingService: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasShippingService {

    public var hasShippingService: SchemaOrg.ShippingService? {
        get { self[first: "hasShippingService"] }
        set { self[first: "hasShippingService"] = newValue }
    }
}
