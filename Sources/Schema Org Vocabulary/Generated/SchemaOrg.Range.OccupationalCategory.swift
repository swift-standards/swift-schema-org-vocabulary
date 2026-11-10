extension SchemaOrg.Range {

    public enum OccupationalCategory: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case categoryCode(SchemaOrg.CategoryCode)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.OccupationalCategory {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .categoryCode(let value):
            SchemaOrg.CategoryCode.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.CategoryCode.deserialize(value) {
            return .categoryCode(value)
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
