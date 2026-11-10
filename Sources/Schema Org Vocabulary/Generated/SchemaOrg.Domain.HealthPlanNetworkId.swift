extension SchemaOrg.Domain {

    public protocol HealthPlanNetworkId: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HealthPlanNetworkId {

    public var healthPlanNetworkId: Swift.String? {
        get { self[first: "healthPlanNetworkId"] }
        set { self[first: "healthPlanNetworkId"] = newValue }
    }
}
