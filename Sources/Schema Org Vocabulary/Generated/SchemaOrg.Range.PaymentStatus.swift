extension SchemaOrg.Range {

    public enum PaymentStatus: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case paymentStatusType(SchemaOrg.PaymentStatusType)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.PaymentStatus {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .paymentStatusType(let value):
            SchemaOrg.PaymentStatusType.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PaymentStatusType.deserialize(value) {
            return .paymentStatusType(value)
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
