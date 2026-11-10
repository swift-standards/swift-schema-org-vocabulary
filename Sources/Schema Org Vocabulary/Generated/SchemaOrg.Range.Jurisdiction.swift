extension SchemaOrg.Range {

    public enum Jurisdiction: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case administrativeArea(SchemaOrg.AdministrativeArea)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Jurisdiction {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .administrativeArea(let value):
            SchemaOrg.AdministrativeArea.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.AdministrativeArea.deserialize(value) {
            return .administrativeArea(value)
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
