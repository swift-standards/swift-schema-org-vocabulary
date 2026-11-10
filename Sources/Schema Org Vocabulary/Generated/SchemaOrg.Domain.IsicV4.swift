extension SchemaOrg.Domain {

    public protocol IsicV4: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsicV4 {

    public var isicV4: Swift.String? {
        get { self[first: "isicV4"] }
        set { self[first: "isicV4"] = newValue }
    }
}
