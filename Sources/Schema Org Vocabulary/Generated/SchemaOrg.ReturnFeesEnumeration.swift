extension SchemaOrg {

    public enum ReturnFeesEnumeration: SchemaOrg.Value, Swift.Hashable {

        case freeReturn

        case originalShippingFees

        case restockingFees

        case returnFeesCustomerResponsibility

        case returnShippingFees

        case instance(Instance)
    }
}

extension SchemaOrg.ReturnFeesEnumeration {

    public var term: Swift.String? {
        switch self {
        case .freeReturn:
            "FreeReturn"

        case .originalShippingFees:
            "OriginalShippingFees"

        case .restockingFees:
            "RestockingFees"

        case .returnFeesCustomerResponsibility:
            "ReturnFeesCustomerResponsibility"

        case .returnShippingFees:
            "ReturnShippingFees"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "FreeReturn":
            self = .freeReturn
            return

        case "OriginalShippingFees":
            self = .originalShippingFees
            return

        case "RestockingFees":
            self = .restockingFees
            return

        case "ReturnFeesCustomerResponsibility":
            self = .returnFeesCustomerResponsibility
            return

        case "ReturnShippingFees":
            self = .returnShippingFees
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .freeReturn:
            SchemaOrg.serialize(term: "FreeReturn")

        case .originalShippingFees:
            SchemaOrg.serialize(term: "OriginalShippingFees")

        case .restockingFees:
            SchemaOrg.serialize(term: "RestockingFees")

        case .returnFeesCustomerResponsibility:
            SchemaOrg.serialize(term: "ReturnFeesCustomerResponsibility")

        case .returnShippingFees:
            SchemaOrg.serialize(term: "ReturnShippingFees")

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
