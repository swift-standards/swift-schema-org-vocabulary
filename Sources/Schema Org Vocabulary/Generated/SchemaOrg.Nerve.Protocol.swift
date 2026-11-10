extension SchemaOrg.Nerve {

    public protocol `Protocol`: SchemaOrg.AnatomicalStructure.`Protocol` {}
}

extension SchemaOrg.Nerve.`Protocol` {

    public var branch: SchemaOrg.AnatomicalStructure? {
        get { self[first: "branch"] }
        set { self[first: "branch"] = newValue }
    }

    public var nerveMotor: SchemaOrg.Muscle? {
        get { self[first: "nerveMotor"] }
        set { self[first: "nerveMotor"] = newValue }
    }

    public var sensoryUnit: SchemaOrg.Range.SensoryUnit? {
        get { self[first: "sensoryUnit"] }
        set { self[first: "sensoryUnit"] = newValue }
    }

    public var sourcedFrom: SchemaOrg.BrainStructure? {
        get { self[first: "sourcedFrom"] }
        set { self[first: "sourcedFrom"] = newValue }
    }
}
