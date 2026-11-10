extension SchemaOrg.Domain {

    public protocol Member: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Member {

    public var member: SchemaOrg.Range.Member? {
        get { self[first: "member"] }
        set { self[first: "member"] = newValue }
    }
}
