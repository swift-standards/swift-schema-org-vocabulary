extension SchemaOrg.Domain {

    public protocol Gtin13: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Gtin13 {

    public var gtin13: Swift.String? {
        get { self[first: "gtin13"] }
        set { self[first: "gtin13"] = newValue }
    }
}
