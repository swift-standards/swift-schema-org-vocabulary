extension SchemaOrg.Range {

    public enum HealthPlanCostSharing: SchemaOrg.Value, Swift.Hashable {

        case boolean(Swift.Bool)

        case healthPlanCostSharingSpecification(SchemaOrg.HealthPlanCostSharingSpecification)
    }
}

extension SchemaOrg.Range.HealthPlanCostSharing {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .boolean(let value):
            Swift.Bool.serialize(value)

        case .healthPlanCostSharingSpecification(let value):
            SchemaOrg.HealthPlanCostSharingSpecification.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.HealthPlanCostSharingSpecification.deserialize(value) {
            return .healthPlanCostSharingSpecification(value)
        }
        if let value = Swift.Bool.deserialize(value) {
            return .boolean(value)
        }
        return nil
    }
}
