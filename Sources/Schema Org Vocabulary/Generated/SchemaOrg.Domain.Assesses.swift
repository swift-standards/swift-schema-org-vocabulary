extension SchemaOrg.Domain {

    public protocol Assesses: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Assesses {

    public var assesses: SchemaOrg.Range.Assesses? {
        get { self[first: "assesses"] }
        set { self[first: "assesses"] = newValue }
    }
}
