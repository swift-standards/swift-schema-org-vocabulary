extension SchemaOrg.Range {

    public enum BeneficiaryBank: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case bankOrCreditUnion(SchemaOrg.BankOrCreditUnion)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.BeneficiaryBank {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .bankOrCreditUnion(let value):
            SchemaOrg.BankOrCreditUnion.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.BankOrCreditUnion.deserialize(value) {
            return .bankOrCreditUnion(value)
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
