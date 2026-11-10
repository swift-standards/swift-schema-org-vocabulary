extension SchemaOrg.Range {

    public enum Qualifications: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case credential(SchemaOrg.Credential)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Qualifications {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .credential(let value):
            SchemaOrg.Credential.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Credential.deserialize(value) {
            return .credential(value)
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
