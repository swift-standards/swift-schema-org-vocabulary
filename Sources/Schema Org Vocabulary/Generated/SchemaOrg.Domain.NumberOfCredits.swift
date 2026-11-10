extension SchemaOrg.Domain {

    public protocol NumberOfCredits: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfCredits {

    public var numberOfCredits: SchemaOrg.Range.NumberOfCredits? {
        get { self[first: "numberOfCredits"] }
        set { self[first: "numberOfCredits"] = newValue }
    }
}
