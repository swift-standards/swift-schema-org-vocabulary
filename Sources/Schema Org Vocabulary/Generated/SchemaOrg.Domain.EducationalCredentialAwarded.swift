extension SchemaOrg.Domain {

    public protocol EducationalCredentialAwarded: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EducationalCredentialAwarded {

    public var educationalCredentialAwarded: SchemaOrg.Range.EducationalCredentialAwarded? {
        get { self[first: "educationalCredentialAwarded"] }
        set { self[first: "educationalCredentialAwarded"] = newValue }
    }
}
