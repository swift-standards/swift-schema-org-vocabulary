extension SchemaOrg.Domain {

    public protocol Offers: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Offers {

    public var offers: SchemaOrg.Range.Offers? {
        get { self[first: "offers"] }
        set { self[first: "offers"] = newValue }
    }
}
