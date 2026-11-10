extension SchemaOrg.Range {

    public enum ExifData: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case propertyValue(SchemaOrg.PropertyValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ExifData {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .propertyValue(let value):
            SchemaOrg.PropertyValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PropertyValue.deserialize(value) {
            return .propertyValue(value)
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
