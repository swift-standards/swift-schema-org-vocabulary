extension SchemaOrg.Domain {

    public protocol BaseSalary: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.BaseSalary {

    public var baseSalary: SchemaOrg.Range.BaseSalary? {
        get { self[first: "baseSalary"] }
        set { self[first: "baseSalary"] = newValue }
    }
}
