extension SchemaOrg.Audience {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.Audience.`Protocol` {

    public var audienceType: Swift.String? {
        get { self[first: "audienceType"] }
        set { self[first: "audienceType"] = newValue }
    }

    public var geographicArea: SchemaOrg.AdministrativeArea? {
        get { self[first: "geographicArea"] }
        set { self[first: "geographicArea"] = newValue }
    }
}
