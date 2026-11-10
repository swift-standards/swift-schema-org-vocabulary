extension SchemaOrg.Range {

    public enum ServiceType: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case governmentBenefitsType(SchemaOrg.GovernmentBenefitsType)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ServiceType {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .governmentBenefitsType(let value):
            SchemaOrg.GovernmentBenefitsType.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.GovernmentBenefitsType.deserialize(value) {
            return .governmentBenefitsType(value)
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
