extension SchemaOrg.Domain {

    public protocol Sponsor: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Sponsor {

    public var sponsor: SchemaOrg.Range.Sponsor? {
        get { self[first: "sponsor"] }
        set { self[first: "sponsor"] = newValue }
    }
}
