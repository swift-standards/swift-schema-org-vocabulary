extension SchemaOrg.Range {

    public enum PassengerPriorityStatus: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case qualitativeValue(SchemaOrg.QualitativeValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.PassengerPriorityStatus {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .qualitativeValue(let value):
            SchemaOrg.QualitativeValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.QualitativeValue.deserialize(value) {
            return .qualitativeValue(value)
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
