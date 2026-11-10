extension SchemaOrg.Domain {

    public protocol HealthPlanCostSharing: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HealthPlanCostSharing {

    public var healthPlanCostSharing: SchemaOrg.Range.HealthPlanCostSharing? {
        get { self[first: "healthPlanCostSharing"] }
        set { self[first: "healthPlanCostSharing"] = newValue }
    }
}
