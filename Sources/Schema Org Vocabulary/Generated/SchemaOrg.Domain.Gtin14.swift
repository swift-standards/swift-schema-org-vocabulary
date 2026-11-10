extension SchemaOrg.Domain {

    public protocol Gtin14: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Gtin14 {

    public var gtin14: Swift.String? {
        get { self[first: "gtin14"] }
        set { self[first: "gtin14"] = newValue }
    }
}
