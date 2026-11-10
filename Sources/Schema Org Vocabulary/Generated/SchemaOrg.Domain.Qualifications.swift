extension SchemaOrg.Domain {

    public protocol Qualifications: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Qualifications {

    public var qualifications: SchemaOrg.Range.Qualifications? {
        get { self[first: "qualifications"] }
        set { self[first: "qualifications"] = newValue }
    }
}
