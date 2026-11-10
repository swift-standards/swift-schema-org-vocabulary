extension SchemaOrg.Domain {

    public protocol Funding: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Funding {

    public var funding: SchemaOrg.Grant? {
        get { self[first: "funding"] }
        set { self[first: "funding"] = newValue }
    }
}
