extension SchemaOrg.Domain {

    public protocol EndDate: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EndDate {

    public var endDate: SchemaOrg.Range.EndDate? {
        get { self[first: "endDate"] }
        set { self[first: "endDate"] = newValue }
    }
}
