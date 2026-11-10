extension SchemaOrg {

    public enum MusicAlbumReleaseType: SchemaOrg.Value, Swift.Hashable {

        case albumRelease

        case broadcastRelease

        case epRelease

        case singleRelease

        case instance(Instance)
    }
}

extension SchemaOrg.MusicAlbumReleaseType {

    public var term: Swift.String? {
        switch self {
        case .albumRelease:
            "AlbumRelease"

        case .broadcastRelease:
            "BroadcastRelease"

        case .epRelease:
            "EPRelease"

        case .singleRelease:
            "SingleRelease"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AlbumRelease":
            self = .albumRelease
            return

        case "BroadcastRelease":
            self = .broadcastRelease
            return

        case "EPRelease":
            self = .epRelease
            return

        case "SingleRelease":
            self = .singleRelease
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .albumRelease:
            SchemaOrg.serialize(term: "AlbumRelease")

        case .broadcastRelease:
            SchemaOrg.serialize(term: "BroadcastRelease")

        case .epRelease:
            SchemaOrg.serialize(term: "EPRelease")

        case .singleRelease:
            SchemaOrg.serialize(term: "SingleRelease")

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
