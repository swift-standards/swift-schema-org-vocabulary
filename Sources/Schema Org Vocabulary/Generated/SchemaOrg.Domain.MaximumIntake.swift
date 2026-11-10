extension SchemaOrg.Domain {

    public protocol MaximumIntake: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MaximumIntake {

    public var maximumIntake: SchemaOrg.MaximumDoseSchedule? {
        get { self[first: "maximumIntake"] }
        set { self[first: "maximumIntake"] = newValue }
    }
}
