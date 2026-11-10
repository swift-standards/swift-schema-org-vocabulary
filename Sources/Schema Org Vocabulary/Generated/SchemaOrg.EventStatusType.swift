extension SchemaOrg {

    public enum EventStatusType: SchemaOrg.Value, Swift.Hashable {

        case eventCancelled

        case eventMovedOnline

        case eventPostponed

        case eventRescheduled

        case eventScheduled

        case instance(Instance)
    }
}

extension SchemaOrg.EventStatusType {

    public var term: Swift.String? {
        switch self {
        case .eventCancelled:
            "EventCancelled"

        case .eventMovedOnline:
            "EventMovedOnline"

        case .eventPostponed:
            "EventPostponed"

        case .eventRescheduled:
            "EventRescheduled"

        case .eventScheduled:
            "EventScheduled"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "EventCancelled":
            self = .eventCancelled
            return

        case "EventMovedOnline":
            self = .eventMovedOnline
            return

        case "EventPostponed":
            self = .eventPostponed
            return

        case "EventRescheduled":
            self = .eventRescheduled
            return

        case "EventScheduled":
            self = .eventScheduled
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .eventCancelled:
            SchemaOrg.serialize(term: "EventCancelled")

        case .eventMovedOnline:
            SchemaOrg.serialize(term: "EventMovedOnline")

        case .eventPostponed:
            SchemaOrg.serialize(term: "EventPostponed")

        case .eventRescheduled:
            SchemaOrg.serialize(term: "EventRescheduled")

        case .eventScheduled:
            SchemaOrg.serialize(term: "EventScheduled")

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
