extension SchemaOrg.Domain {

    public protocol EducationalLevel: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EducationalLevel {

    public var educationalLevel: SchemaOrg.Range.EducationalLevel? {
        get { self[first: "educationalLevel"] }
        set { self[first: "educationalLevel"] = newValue }
    }
}
