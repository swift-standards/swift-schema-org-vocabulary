extension SchemaOrg.Domain {

    public protocol IssuedBy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IssuedBy {

    public var issuedBy: SchemaOrg.Organization? {
        get { self[first: "issuedBy"] }
        set { self[first: "issuedBy"] = newValue }
    }
}
