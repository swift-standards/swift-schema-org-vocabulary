extension SchemaOrg.Range {

    public enum GameAvailabilityType: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case gameAvailabilityEnumeration(SchemaOrg.GameAvailabilityEnumeration)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.GameAvailabilityType {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .gameAvailabilityEnumeration(let value):
            SchemaOrg.GameAvailabilityEnumeration.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.GameAvailabilityEnumeration.deserialize(value) {
            return .gameAvailabilityEnumeration(value)
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
