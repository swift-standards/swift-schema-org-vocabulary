extension SchemaOrg.Range {

    public enum PaymentMethod: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case paymentMethod(SchemaOrg.PaymentMethod)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.PaymentMethod {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .paymentMethod(let value):
            SchemaOrg.PaymentMethod.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
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
