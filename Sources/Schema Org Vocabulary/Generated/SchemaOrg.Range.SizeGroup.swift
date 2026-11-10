extension SchemaOrg.Range {

    public enum SizeGroup: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case sizeGroupEnumeration(SchemaOrg.SizeGroupEnumeration)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.SizeGroup {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .sizeGroupEnumeration(let value):
            SchemaOrg.SizeGroupEnumeration.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.SizeGroupEnumeration.deserialize(value) {
            return .sizeGroupEnumeration(value)
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
