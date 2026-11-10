extension SchemaOrg.Domain {

    public protocol EducationalUse: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EducationalUse {

    public var educationalUse: SchemaOrg.Range.EducationalUse? {
        get { self[first: "educationalUse"] }
        set { self[first: "educationalUse"] = newValue }
    }
}
