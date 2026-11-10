extension SchemaOrg {

    public enum ReturnMethodEnumeration: SchemaOrg.Value, Swift.Hashable {

        case keepProduct

        case returnAtKiosk

        case returnByMail

        case returnInStore

        case instance(Instance)
    }
}

extension SchemaOrg.ReturnMethodEnumeration {

    public var term: Swift.String? {
        switch self {
        case .keepProduct:
            "KeepProduct"

        case .returnAtKiosk:
            "ReturnAtKiosk"

        case .returnByMail:
            "ReturnByMail"

        case .returnInStore:
            "ReturnInStore"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "KeepProduct":
            self = .keepProduct
            return

        case "ReturnAtKiosk":
            self = .returnAtKiosk
            return

        case "ReturnByMail":
            self = .returnByMail
            return

        case "ReturnInStore":
            self = .returnInStore
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .keepProduct:
            SchemaOrg.serialize(term: "KeepProduct")

        case .returnAtKiosk:
            SchemaOrg.serialize(term: "ReturnAtKiosk")

        case .returnByMail:
            SchemaOrg.serialize(term: "ReturnByMail")

        case .returnInStore:
            SchemaOrg.serialize(term: "ReturnInStore")

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
