extension SchemaOrg.Domain {

    public protocol StartDate: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.StartDate {

    public var startDate: SchemaOrg.Range.StartDate? {
        get { self[first: "startDate"] }
        set { self[first: "startDate"] = newValue }
    }
}
