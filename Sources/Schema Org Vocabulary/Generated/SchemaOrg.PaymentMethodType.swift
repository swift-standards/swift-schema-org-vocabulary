extension SchemaOrg {

    public enum PaymentMethodType: SchemaOrg.Value, Swift.Hashable {

        case byBankTransferInAdvance

        case byInvoice

        case cod

        case cash

        case checkInAdvance

        case directDebit

        case inStorePrepay

        case phoneCarrierPayment

        case instance(Instance)
    }
}

extension SchemaOrg.PaymentMethodType {

    public var term: Swift.String? {
        switch self {
        case .byBankTransferInAdvance:
            "ByBankTransferInAdvance"

        case .byInvoice:
            "ByInvoice"

        case .cod:
            "COD"

        case .cash:
            "Cash"

        case .checkInAdvance:
            "CheckInAdvance"

        case .directDebit:
            "DirectDebit"

        case .inStorePrepay:
            "InStorePrepay"

        case .phoneCarrierPayment:
            "PhoneCarrierPayment"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ByBankTransferInAdvance":
            self = .byBankTransferInAdvance
            return

        case "ByInvoice":
            self = .byInvoice
            return

        case "COD":
            self = .cod
            return

        case "Cash":
            self = .cash
            return

        case "CheckInAdvance":
            self = .checkInAdvance
            return

        case "DirectDebit":
            self = .directDebit
            return

        case "InStorePrepay":
            self = .inStorePrepay
            return

        case "PhoneCarrierPayment":
            self = .phoneCarrierPayment
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .byBankTransferInAdvance:
            SchemaOrg.serialize(term: "ByBankTransferInAdvance")

        case .byInvoice:
            SchemaOrg.serialize(term: "ByInvoice")

        case .cod:
            SchemaOrg.serialize(term: "COD")

        case .cash:
            SchemaOrg.serialize(term: "Cash")

        case .checkInAdvance:
            SchemaOrg.serialize(term: "CheckInAdvance")

        case .directDebit:
            SchemaOrg.serialize(term: "DirectDebit")

        case .inStorePrepay:
            SchemaOrg.serialize(term: "InStorePrepay")

        case .phoneCarrierPayment:
            SchemaOrg.serialize(term: "PhoneCarrierPayment")

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
