extension SchemaOrg.Domain {

    public protocol Gtin12: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Gtin12 {

    public var gtin12: Swift.String? {
        get { self[first: "gtin12"] }
        set { self[first: "gtin12"] = newValue }
    }
}
