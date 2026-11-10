extension SchemaOrg.Domain {

    public protocol Gtin: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Gtin {

    public var gtin: SchemaOrg.Range.Gtin? {
        get { self[first: "gtin"] }
        set { self[first: "gtin"] = newValue }
    }
}
