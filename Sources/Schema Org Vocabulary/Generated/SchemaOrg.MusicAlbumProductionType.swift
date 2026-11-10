extension SchemaOrg {

    public enum MusicAlbumProductionType: SchemaOrg.Value, Swift.Hashable {

        case compilationAlbum

        case djMixAlbum

        case demoAlbum

        case liveAlbum

        case mixtapeAlbum

        case remixAlbum

        case soundtrackAlbum

        case spokenWordAlbum

        case studioAlbum

        case instance(Instance)
    }
}

extension SchemaOrg.MusicAlbumProductionType {

    public var term: Swift.String? {
        switch self {
        case .compilationAlbum:
            "CompilationAlbum"

        case .djMixAlbum:
            "DJMixAlbum"

        case .demoAlbum:
            "DemoAlbum"

        case .liveAlbum:
            "LiveAlbum"

        case .mixtapeAlbum:
            "MixtapeAlbum"

        case .remixAlbum:
            "RemixAlbum"

        case .soundtrackAlbum:
            "SoundtrackAlbum"

        case .spokenWordAlbum:
            "SpokenWordAlbum"

        case .studioAlbum:
            "StudioAlbum"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CompilationAlbum":
            self = .compilationAlbum
            return

        case "DJMixAlbum":
            self = .djMixAlbum
            return

        case "DemoAlbum":
            self = .demoAlbum
            return

        case "LiveAlbum":
            self = .liveAlbum
            return

        case "MixtapeAlbum":
            self = .mixtapeAlbum
            return

        case "RemixAlbum":
            self = .remixAlbum
            return

        case "SoundtrackAlbum":
            self = .soundtrackAlbum
            return

        case "SpokenWordAlbum":
            self = .spokenWordAlbum
            return

        case "StudioAlbum":
            self = .studioAlbum
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .compilationAlbum:
            SchemaOrg.serialize(term: "CompilationAlbum")

        case .djMixAlbum:
            SchemaOrg.serialize(term: "DJMixAlbum")

        case .demoAlbum:
            SchemaOrg.serialize(term: "DemoAlbum")

        case .liveAlbum:
            SchemaOrg.serialize(term: "LiveAlbum")

        case .mixtapeAlbum:
            SchemaOrg.serialize(term: "MixtapeAlbum")

        case .remixAlbum:
            SchemaOrg.serialize(term: "RemixAlbum")

        case .soundtrackAlbum:
            SchemaOrg.serialize(term: "SoundtrackAlbum")

        case .spokenWordAlbum:
            SchemaOrg.serialize(term: "SpokenWordAlbum")

        case .studioAlbum:
            SchemaOrg.serialize(term: "StudioAlbum")

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
