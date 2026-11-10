extension SchemaOrg.Domain {

    public protocol EstimatedSalary: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.EstimatedSalary {

    public var estimatedSalary: SchemaOrg.Range.EstimatedSalary? {
        get { self[first: "estimatedSalary"] }
        set { self[first: "estimatedSalary"] = newValue }
    }
}
