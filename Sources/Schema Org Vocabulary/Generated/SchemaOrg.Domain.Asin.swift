extension SchemaOrg.Domain {

    public protocol Asin: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Asin {

    public var asin: SchemaOrg.Range.Asin? {
        get { self[first: "asin"] }
        set { self[first: "asin"] = newValue }
    }
}
