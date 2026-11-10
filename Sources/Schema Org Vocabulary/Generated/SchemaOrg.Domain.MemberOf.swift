extension SchemaOrg.Domain {

    public protocol MemberOf: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MemberOf {

    public var memberOf: SchemaOrg.Range.MemberOf? {
        get { self[first: "memberOf"] }
        set { self[first: "memberOf"] = newValue }
    }
}
