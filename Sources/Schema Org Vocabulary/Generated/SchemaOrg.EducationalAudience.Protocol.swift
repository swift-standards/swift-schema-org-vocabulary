extension SchemaOrg.EducationalAudience {

    public protocol `Protocol`: SchemaOrg.Audience.`Protocol` {}
}

extension SchemaOrg.EducationalAudience.`Protocol` {

    public var educationalRole: Swift.String? {
        get { self[first: "educationalRole"] }
        set { self[first: "educationalRole"] = newValue }
    }
}
