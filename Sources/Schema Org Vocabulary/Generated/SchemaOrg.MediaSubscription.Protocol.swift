extension SchemaOrg.MediaSubscription {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.ExpectsAcceptanceOf
    {}
}

extension SchemaOrg.MediaSubscription.`Protocol` {

    public var authenticator: SchemaOrg.Organization? {
        get { self[first: "authenticator"] }
        set { self[first: "authenticator"] = newValue }
    }
}
