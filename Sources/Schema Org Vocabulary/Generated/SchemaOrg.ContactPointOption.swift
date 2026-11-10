extension SchemaOrg {

    public enum ContactPointOption: SchemaOrg.Value, Swift.Hashable {

        case hearingImpairedSupported

        case tollFree

        case instance(Instance)
    }
}

extension SchemaOrg.ContactPointOption {

    public var term: Swift.String? {
        switch self {
        case .hearingImpairedSupported:
            "HearingImpairedSupported"

        case .tollFree:
            "TollFree"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "HearingImpairedSupported":
            self = .hearingImpairedSupported
            return

        case "TollFree":
            self = .tollFree
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .hearingImpairedSupported:
            SchemaOrg.serialize(term: "HearingImpairedSupported")

        case .tollFree:
            SchemaOrg.serialize(term: "TollFree")

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
