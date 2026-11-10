extension SchemaOrg {

    public enum MerchantReturnEnumeration: SchemaOrg.Value, Swift.Hashable {

        case merchantReturnFiniteReturnWindow

        case merchantReturnNotPermitted

        case merchantReturnUnlimitedWindow

        case merchantReturnUnspecified

        case instance(Instance)
    }
}

extension SchemaOrg.MerchantReturnEnumeration {

    public var term: Swift.String? {
        switch self {
        case .merchantReturnFiniteReturnWindow:
            "MerchantReturnFiniteReturnWindow"

        case .merchantReturnNotPermitted:
            "MerchantReturnNotPermitted"

        case .merchantReturnUnlimitedWindow:
            "MerchantReturnUnlimitedWindow"

        case .merchantReturnUnspecified:
            "MerchantReturnUnspecified"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "MerchantReturnFiniteReturnWindow":
            self = .merchantReturnFiniteReturnWindow
            return

        case "MerchantReturnNotPermitted":
            self = .merchantReturnNotPermitted
            return

        case "MerchantReturnUnlimitedWindow":
            self = .merchantReturnUnlimitedWindow
            return

        case "MerchantReturnUnspecified":
            self = .merchantReturnUnspecified
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .merchantReturnFiniteReturnWindow:
            SchemaOrg.serialize(term: "MerchantReturnFiniteReturnWindow")

        case .merchantReturnNotPermitted:
            SchemaOrg.serialize(term: "MerchantReturnNotPermitted")

        case .merchantReturnUnlimitedWindow:
            SchemaOrg.serialize(term: "MerchantReturnUnlimitedWindow")

        case .merchantReturnUnspecified:
            SchemaOrg.serialize(term: "MerchantReturnUnspecified")

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
