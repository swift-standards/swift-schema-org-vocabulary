extension SchemaOrg.Domain {

    public protocol AuthorizedRepresentative: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AuthorizedRepresentative {

    public var authorizedRepresentative: SchemaOrg.Range.AuthorizedRepresentative? {
        get { self[first: "authorizedRepresentative"] }
        set { self[first: "authorizedRepresentative"] = newValue }
    }
}
