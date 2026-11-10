extension SchemaOrg.Range {

    public enum VehicleSpecialUsage: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case carUsageType(SchemaOrg.CarUsageType)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.VehicleSpecialUsage {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .carUsageType(let value):
            SchemaOrg.CarUsageType.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CarUsageType.deserialize(value) {
            return .carUsageType(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
