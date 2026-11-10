extension SchemaOrg.Domain {

    public protocol Mpn: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Mpn {

    public var mpn: Swift.String? {
        get { self[first: "mpn"] }
        set { self[first: "mpn"] = newValue }
    }
}
