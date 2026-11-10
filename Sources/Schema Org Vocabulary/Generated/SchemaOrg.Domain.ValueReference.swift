extension SchemaOrg.Domain {

    public protocol ValueReference: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ValueReference {

    public var valueReference: SchemaOrg.Range.ValueReference? {
        get { self[first: "valueReference"] }
        set { self[first: "valueReference"] = newValue }
    }
}
