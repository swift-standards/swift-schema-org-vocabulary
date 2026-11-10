extension SchemaOrg.Domain {

    public protocol EducationalAlignment: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EducationalAlignment {

    public var educationalAlignment: SchemaOrg.AlignmentObject? {
        get { self[first: "educationalAlignment"] }
        set { self[first: "educationalAlignment"] = newValue }
    }
}
