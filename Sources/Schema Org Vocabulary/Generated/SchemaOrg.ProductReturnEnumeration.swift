extension SchemaOrg {

    public enum ProductReturnEnumeration: SchemaOrg.Value, Swift.Hashable {

        case productReturnFiniteReturnWindow

        case productReturnNotPermitted

        case productReturnUnlimitedWindow

        case productReturnUnspecified

        case instance(Instance)
    }
}

extension SchemaOrg.ProductReturnEnumeration {

    public var term: Swift.String? {
        switch self {
        case .productReturnFiniteReturnWindow:
            "ProductReturnFiniteReturnWindow"

        case .productReturnNotPermitted:
            "ProductReturnNotPermitted"

        case .productReturnUnlimitedWindow:
            "ProductReturnUnlimitedWindow"

        case .productReturnUnspecified:
            "ProductReturnUnspecified"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ProductReturnFiniteReturnWindow":
            self = .productReturnFiniteReturnWindow
            return

        case "ProductReturnNotPermitted":
            self = .productReturnNotPermitted
            return

        case "ProductReturnUnlimitedWindow":
            self = .productReturnUnlimitedWindow
            return

        case "ProductReturnUnspecified":
            self = .productReturnUnspecified
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .productReturnFiniteReturnWindow:
            SchemaOrg.serialize(term: "ProductReturnFiniteReturnWindow")

        case .productReturnNotPermitted:
            SchemaOrg.serialize(term: "ProductReturnNotPermitted")

        case .productReturnUnlimitedWindow:
            SchemaOrg.serialize(term: "ProductReturnUnlimitedWindow")

        case .productReturnUnspecified:
            SchemaOrg.serialize(term: "ProductReturnUnspecified")

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
