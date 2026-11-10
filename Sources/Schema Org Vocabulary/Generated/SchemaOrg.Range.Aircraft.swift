extension SchemaOrg.Range {

    public enum Aircraft: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case text(Swift.String)

        case vehicle(SchemaOrg.Vehicle)
    }
}

extension SchemaOrg.Range.Aircraft {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .text(let value):
            Swift.String.serialize(value)

        case .vehicle(let value):
            SchemaOrg.Vehicle.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Vehicle.deserialize(value) {
            return .vehicle(value)
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
