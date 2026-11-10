extension SchemaOrg.Domain {

    public protocol HasCredential: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HasCredential {

    public var hasCredential: SchemaOrg.Credential? {
        get { self[first: "hasCredential"] }
        set { self[first: "hasCredential"] = newValue }
    }
}
