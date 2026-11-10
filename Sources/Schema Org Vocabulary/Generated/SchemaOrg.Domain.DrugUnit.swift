extension SchemaOrg.Domain {

    public protocol DrugUnit: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DrugUnit {

    public var drugUnit: Swift.String? {
        get { self[first: "drugUnit"] }
        set { self[first: "drugUnit"] = newValue }
    }
}
