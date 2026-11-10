extension SchemaOrg.Domain {

    public protocol HealthPlanDrugTier: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HealthPlanDrugTier {

    public var healthPlanDrugTier: Swift.String? {
        get { self[first: "healthPlanDrugTier"] }
        set { self[first: "healthPlanDrugTier"] = newValue }
    }
}
