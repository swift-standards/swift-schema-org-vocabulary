extension SchemaOrg.Range {

    public enum FlightDistance: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case distance(Swift.String)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.FlightDistance {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .distance(let value):
            Swift.String.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = Swift.String.deserialize(value) {
            return .distance(value)
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
