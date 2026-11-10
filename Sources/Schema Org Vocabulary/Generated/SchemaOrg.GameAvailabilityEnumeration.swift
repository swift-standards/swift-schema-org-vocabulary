extension SchemaOrg {

    public enum GameAvailabilityEnumeration: SchemaOrg.Value, Swift.Hashable {

        case demoGameAvailability

        case fullGameAvailability

        case instance(Instance)
    }
}

extension SchemaOrg.GameAvailabilityEnumeration {

    public var term: Swift.String? {
        switch self {
        case .demoGameAvailability:
            "DemoGameAvailability"

        case .fullGameAvailability:
            "FullGameAvailability"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "DemoGameAvailability":
            self = .demoGameAvailability
            return

        case "FullGameAvailability":
            self = .fullGameAvailability
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .demoGameAvailability:
            SchemaOrg.serialize(term: "DemoGameAvailability")

        case .fullGameAvailability:
            SchemaOrg.serialize(term: "FullGameAvailability")

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
