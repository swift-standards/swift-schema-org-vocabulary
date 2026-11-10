extension SchemaOrg.Domain {

    public protocol HealthCondition: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HealthCondition {

    public var healthCondition: SchemaOrg.MedicalCondition? {
        get { self[first: "healthCondition"] }
        set { self[first: "healthCondition"] = newValue }
    }
}
