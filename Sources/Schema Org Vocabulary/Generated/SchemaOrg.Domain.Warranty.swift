extension SchemaOrg.Domain {

    public protocol Warranty: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Warranty {

    public var warranty: SchemaOrg.WarrantyPromise? {
        get { self[first: "warranty"] }
        set { self[first: "warranty"] = newValue }
    }
}
