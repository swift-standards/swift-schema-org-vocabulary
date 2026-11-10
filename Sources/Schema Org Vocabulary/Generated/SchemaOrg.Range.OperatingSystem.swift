extension SchemaOrg.Range {

    public enum OperatingSystem: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case operatingSystem(SchemaOrg.OperatingSystem)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.OperatingSystem {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .operatingSystem(let value):
            SchemaOrg.OperatingSystem.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.OperatingSystem.deserialize(value) {
            return .operatingSystem(value)
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
