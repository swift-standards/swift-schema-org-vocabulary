extension SchemaOrg {

    public enum NLNonprofitType: SchemaOrg.Value, Swift.Hashable {

        case nonprofitANBI

        case nonprofitSBBI

        case instance(Instance)
    }
}

extension SchemaOrg.NLNonprofitType {

    public var term: Swift.String? {
        switch self {
        case .nonprofitANBI:
            "NonprofitANBI"

        case .nonprofitSBBI:
            "NonprofitSBBI"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "NonprofitANBI":
            self = .nonprofitANBI
            return

        case "NonprofitSBBI":
            self = .nonprofitSBBI
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .nonprofitANBI:
            SchemaOrg.serialize(term: "NonprofitANBI")

        case .nonprofitSBBI:
            SchemaOrg.serialize(term: "NonprofitSBBI")

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
