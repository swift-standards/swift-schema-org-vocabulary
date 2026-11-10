extension SchemaOrg {

    public enum GameServerStatus: SchemaOrg.Value, Swift.Hashable {

        case offlinePermanently

        case offlineTemporarily

        case online

        case onlineFull

        case instance(Instance)
    }
}

extension SchemaOrg.GameServerStatus {

    public var term: Swift.String? {
        switch self {
        case .offlinePermanently:
            "OfflinePermanently"

        case .offlineTemporarily:
            "OfflineTemporarily"

        case .online:
            "Online"

        case .onlineFull:
            "OnlineFull"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "OfflinePermanently":
            self = .offlinePermanently
            return

        case "OfflineTemporarily":
            self = .offlineTemporarily
            return

        case "Online":
            self = .online
            return

        case "OnlineFull":
            self = .onlineFull
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .offlinePermanently:
            SchemaOrg.serialize(term: "OfflinePermanently")

        case .offlineTemporarily:
            SchemaOrg.serialize(term: "OfflineTemporarily")

        case .online:
            SchemaOrg.serialize(term: "Online")

        case .onlineFull:
            SchemaOrg.serialize(term: "OnlineFull")

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
