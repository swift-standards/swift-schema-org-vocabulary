extension SchemaOrg.Range {

    public enum ErrorCode: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral, Swift.ExpressibleByIntegerLiteral {

        case definedTerm(SchemaOrg.DefinedTerm)

        case integer(Swift.Int)

        case statusEnumeration(SchemaOrg.StatusEnumeration)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ErrorCode {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)

        case .integer(let value):
            Swift.Int.serialize(value)

        case .statusEnumeration(let value):
            SchemaOrg.StatusEnumeration.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.StatusEnumeration.deserialize(value) {
            return .statusEnumeration(value)
        }
        if let value = SchemaOrg.DefinedTerm.deserialize(value) {
            return .definedTerm(value)
        }
        if let value = Swift.Int.deserialize(value) {
            return .integer(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }

    public init(integerLiteral value: Swift.Int) {
        self = .integer(value)
    }
}
