extension SchemaOrg.Domain {

    public protocol WarrantyPromise: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.WarrantyPromise {

    public var warrantyPromise: SchemaOrg.WarrantyPromise? {
        get { self[first: "warrantyPromise"] }
        set { self[first: "warrantyPromise"] = newValue }
    }
}
