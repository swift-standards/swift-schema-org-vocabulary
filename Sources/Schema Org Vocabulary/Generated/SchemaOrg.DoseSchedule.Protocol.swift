extension SchemaOrg.DoseSchedule {

    public protocol `Protocol`:
        SchemaOrg.MedicalIntangible.`Protocol`,
        SchemaOrg.Domain.TargetPopulation
    {}
}

extension SchemaOrg.DoseSchedule.`Protocol` {

    public var doseUnit: Swift.String? {
        get { self[first: "doseUnit"] }
        set { self[first: "doseUnit"] = newValue }
    }

    public var doseValue: SchemaOrg.Range.DoseValue? {
        get { self[first: "doseValue"] }
        set { self[first: "doseValue"] = newValue }
    }

    public var frequency: Swift.String? {
        get { self[first: "frequency"] }
        set { self[first: "frequency"] = newValue }
    }
}
