extension SchemaOrg.Range {

    public enum Supply: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case howToSupply(SchemaOrg.HowToSupply)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Supply {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .howToSupply(let value):
            SchemaOrg.HowToSupply.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.HowToSupply.deserialize(value) {
            return .howToSupply(value)
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
