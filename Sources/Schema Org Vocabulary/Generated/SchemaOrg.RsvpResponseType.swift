extension SchemaOrg {

    public enum RsvpResponseType: SchemaOrg.Value, Swift.Hashable {

        case rsvpResponseMaybe

        case rsvpResponseNo

        case rsvpResponseYes

        case instance(Instance)
    }
}

extension SchemaOrg.RsvpResponseType {

    public var term: Swift.String? {
        switch self {
        case .rsvpResponseMaybe:
            "RsvpResponseMaybe"

        case .rsvpResponseNo:
            "RsvpResponseNo"

        case .rsvpResponseYes:
            "RsvpResponseYes"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "RsvpResponseMaybe":
            self = .rsvpResponseMaybe
            return

        case "RsvpResponseNo":
            self = .rsvpResponseNo
            return

        case "RsvpResponseYes":
            self = .rsvpResponseYes
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .rsvpResponseMaybe:
            SchemaOrg.serialize(term: "RsvpResponseMaybe")

        case .rsvpResponseNo:
            SchemaOrg.serialize(term: "RsvpResponseNo")

        case .rsvpResponseYes:
            SchemaOrg.serialize(term: "RsvpResponseYes")

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
