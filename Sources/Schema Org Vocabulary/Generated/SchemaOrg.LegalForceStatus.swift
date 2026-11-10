extension SchemaOrg {

    public enum LegalForceStatus: SchemaOrg.Value, Swift.Hashable {

        case inForce

        case notInForce

        case partiallyInForce

        case instance(Instance)
    }
}

extension SchemaOrg.LegalForceStatus {

    public var term: Swift.String? {
        switch self {
        case .inForce:
            "InForce"

        case .notInForce:
            "NotInForce"

        case .partiallyInForce:
            "PartiallyInForce"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "InForce":
            self = .inForce
            return

        case "NotInForce":
            self = .notInForce
            return

        case "PartiallyInForce":
            self = .partiallyInForce
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .inForce:
            SchemaOrg.serialize(term: "InForce")

        case .notInForce:
            SchemaOrg.serialize(term: "NotInForce")

        case .partiallyInForce:
            SchemaOrg.serialize(term: "PartiallyInForce")

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
