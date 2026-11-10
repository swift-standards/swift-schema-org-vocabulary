extension SchemaOrg {

    public enum EventAttendanceModeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case mixedEventAttendanceMode

        case offlineEventAttendanceMode

        case onlineEventAttendanceMode

        case instance(Instance)
    }
}

extension SchemaOrg.EventAttendanceModeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .mixedEventAttendanceMode:
            "MixedEventAttendanceMode"

        case .offlineEventAttendanceMode:
            "OfflineEventAttendanceMode"

        case .onlineEventAttendanceMode:
            "OnlineEventAttendanceMode"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "MixedEventAttendanceMode":
            self = .mixedEventAttendanceMode
            return

        case "OfflineEventAttendanceMode":
            self = .offlineEventAttendanceMode
            return

        case "OnlineEventAttendanceMode":
            self = .onlineEventAttendanceMode
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .mixedEventAttendanceMode:
            SchemaOrg.serialize(term: "MixedEventAttendanceMode")

        case .offlineEventAttendanceMode:
            SchemaOrg.serialize(term: "OfflineEventAttendanceMode")

        case .onlineEventAttendanceMode:
            SchemaOrg.serialize(term: "OnlineEventAttendanceMode")

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
