extension SchemaOrg.Domain {

    public protocol IsAccessibleForFree: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsAccessibleForFree {

    public var isAccessibleForFree: Swift.Bool? {
        get { self[first: "isAccessibleForFree"] }
        set { self[first: "isAccessibleForFree"] = newValue }
    }
}
