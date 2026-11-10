extension SchemaOrg.EngineSpecification {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.FuelType
    {}
}

extension SchemaOrg.EngineSpecification.`Protocol` {

    public var engineDisplacement: SchemaOrg.QuantitativeValue? {
        get { self[first: "engineDisplacement"] }
        set { self[first: "engineDisplacement"] = newValue }
    }

    public var enginePower: SchemaOrg.QuantitativeValue? {
        get { self[first: "enginePower"] }
        set { self[first: "enginePower"] = newValue }
    }

    public var engineType: SchemaOrg.Range.EngineType? {
        get { self[first: "engineType"] }
        set { self[first: "engineType"] = newValue }
    }

    public var torque: SchemaOrg.QuantitativeValue? {
        get { self[first: "torque"] }
        set { self[first: "torque"] = newValue }
    }
}
