extension SchemaOrg.HealthPlanNetwork {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.HealthPlanCostSharing,
        SchemaOrg.Domain.HealthPlanNetworkId
    {}
}

extension SchemaOrg.HealthPlanNetwork.`Protocol` {

    public var healthPlanNetworkTier: Swift.String? {
        get { self[first: "healthPlanNetworkTier"] }
        set { self[first: "healthPlanNetworkTier"] = newValue }
    }
}
