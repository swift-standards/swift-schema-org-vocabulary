extension SchemaOrg {

    public enum BoardingPolicyType: SchemaOrg.Value, Swift.Hashable {

        case groupBoardingPolicy

        case zoneBoardingPolicy

        case instance(Instance)
    }
}

extension SchemaOrg.BoardingPolicyType {

    public var term: Swift.String? {
        switch self {
        case .groupBoardingPolicy:
            "GroupBoardingPolicy"

        case .zoneBoardingPolicy:
            "ZoneBoardingPolicy"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "GroupBoardingPolicy":
            self = .groupBoardingPolicy
            return

        case "ZoneBoardingPolicy":
            self = .zoneBoardingPolicy
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .groupBoardingPolicy:
            SchemaOrg.serialize(term: "GroupBoardingPolicy")

        case .zoneBoardingPolicy:
            SchemaOrg.serialize(term: "ZoneBoardingPolicy")

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
