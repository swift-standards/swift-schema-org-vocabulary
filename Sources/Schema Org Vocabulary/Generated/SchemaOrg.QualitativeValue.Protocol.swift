extension SchemaOrg.QualitativeValue {

    public protocol `Protocol`:
        SchemaOrg.Enumeration.`Protocol`,
        SchemaOrg.Domain.AdditionalProperty,
        SchemaOrg.Domain.ValueReference
    {}
}

extension SchemaOrg.QualitativeValue.`Protocol` {

    public var equal: SchemaOrg.QualitativeValue? {
        get { self[first: "equal"] }
        set { self[first: "equal"] = newValue }
    }

    public var greater: SchemaOrg.QualitativeValue? {
        get { self[first: "greater"] }
        set { self[first: "greater"] = newValue }
    }

    public var greaterOrEqual: SchemaOrg.QualitativeValue? {
        get { self[first: "greaterOrEqual"] }
        set { self[first: "greaterOrEqual"] = newValue }
    }

    public var lesser: SchemaOrg.QualitativeValue? {
        get { self[first: "lesser"] }
        set { self[first: "lesser"] = newValue }
    }

    public var lesserOrEqual: SchemaOrg.QualitativeValue? {
        get { self[first: "lesserOrEqual"] }
        set { self[first: "lesserOrEqual"] = newValue }
    }

    public var nonEqual: SchemaOrg.QualitativeValue? {
        get { self[first: "nonEqual"] }
        set { self[first: "nonEqual"] = newValue }
    }
}
