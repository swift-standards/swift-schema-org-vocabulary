extension SchemaOrg.Domain {

    public protocol EducationRequirements: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EducationRequirements {

    public var educationRequirements: SchemaOrg.Range.EducationRequirements? {
        get { self[first: "educationRequirements"] }
        set { self[first: "educationRequirements"] = newValue }
    }
}
