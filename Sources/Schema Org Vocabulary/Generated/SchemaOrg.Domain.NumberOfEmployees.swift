extension SchemaOrg.Domain {

    public protocol NumberOfEmployees: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfEmployees {

    public var numberOfEmployees: SchemaOrg.QuantitativeValue? {
        get { self[first: "numberOfEmployees"] }
        set { self[first: "numberOfEmployees"] = newValue }
    }
}
