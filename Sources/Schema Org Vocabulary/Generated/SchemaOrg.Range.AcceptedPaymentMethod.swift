extension SchemaOrg.Range {

    public enum AcceptedPaymentMethod: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case loanOrCredit(SchemaOrg.LoanOrCredit)

        case paymentMethod(SchemaOrg.PaymentMethod)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.AcceptedPaymentMethod {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .loanOrCredit(let value):
            SchemaOrg.LoanOrCredit.serialize(value)

        case .paymentMethod(let value):
            SchemaOrg.PaymentMethod.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.LoanOrCredit.deserialize(value) {
            return .loanOrCredit(value)
        }
        if let value = SchemaOrg.PaymentMethod.deserialize(value) {
            return .paymentMethod(value)
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
