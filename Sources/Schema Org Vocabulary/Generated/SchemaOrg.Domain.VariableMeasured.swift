extension SchemaOrg.Domain {

    public protocol VariableMeasured: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.VariableMeasured {

    public var variableMeasured: SchemaOrg.Range.VariableMeasured? {
        get { self[first: "variableMeasured"] }
        set { self[first: "variableMeasured"] = newValue }
    }
}
