extension SchemaOrg.PropertyValueSpecification {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.MaxValue,
        SchemaOrg.Domain.MinValue
    {}
}

extension SchemaOrg.PropertyValueSpecification.`Protocol` {

    public var defaultValue: SchemaOrg.Range.DefaultValue? {
        get { self[first: "defaultValue"] }
        set { self[first: "defaultValue"] = newValue }
    }

    public var multipleValues: Swift.Bool? {
        get { self[first: "multipleValues"] }
        set { self[first: "multipleValues"] = newValue }
    }

    public var readonlyValue: Swift.Bool? {
        get { self[first: "readonlyValue"] }
        set { self[first: "readonlyValue"] = newValue }
    }

    public var stepValue: Swift.Double? {
        get { self[first: "stepValue"] }
        set { self[first: "stepValue"] = newValue }
    }

    public var valueMaxLength: Swift.Double? {
        get { self[first: "valueMaxLength"] }
        set { self[first: "valueMaxLength"] = newValue }
    }

    public var valueMinLength: Swift.Double? {
        get { self[first: "valueMinLength"] }
        set { self[first: "valueMinLength"] = newValue }
    }

    public var valueName: Swift.String? {
        get { self[first: "valueName"] }
        set { self[first: "valueName"] = newValue }
    }

    public var valuePattern: Swift.String? {
        get { self[first: "valuePattern"] }
        set { self[first: "valuePattern"] = newValue }
    }

    public var valueRequired: Swift.Bool? {
        get { self[first: "valueRequired"] }
        set { self[first: "valueRequired"] = newValue }
    }
}
