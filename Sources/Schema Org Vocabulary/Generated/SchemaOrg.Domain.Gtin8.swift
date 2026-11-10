extension SchemaOrg.Domain {

    public protocol Gtin8: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Gtin8 {

    public var gtin8: Swift.String? {
        get { self[first: "gtin8"] }
        set { self[first: "gtin8"] = newValue }
    }
}
