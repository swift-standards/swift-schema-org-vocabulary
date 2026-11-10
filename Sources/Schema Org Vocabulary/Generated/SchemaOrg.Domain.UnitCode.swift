extension SchemaOrg.Domain {

    public protocol UnitCode: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.UnitCode {

    public var unitCode: SchemaOrg.Range.UnitCode? {
        get { self[first: "unitCode"] }
        set { self[first: "unitCode"] = newValue }
    }
}
