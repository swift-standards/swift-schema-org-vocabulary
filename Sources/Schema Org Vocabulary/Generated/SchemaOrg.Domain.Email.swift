extension SchemaOrg.Domain {

    public protocol Email: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Email {

    public var email: Swift.String? {
        get { self[first: "email"] }
        set { self[first: "email"] = newValue }
    }
}
