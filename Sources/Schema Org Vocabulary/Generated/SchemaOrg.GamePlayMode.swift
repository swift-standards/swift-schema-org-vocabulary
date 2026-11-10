extension SchemaOrg {

    public enum GamePlayMode: SchemaOrg.Value, Swift.Hashable {

        case coOp

        case multiPlayer

        case singlePlayer

        case instance(Instance)
    }
}

extension SchemaOrg.GamePlayMode {

    public var term: Swift.String? {
        switch self {
        case .coOp:
            "CoOp"

        case .multiPlayer:
            "MultiPlayer"

        case .singlePlayer:
            "SinglePlayer"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CoOp":
            self = .coOp
            return

        case "MultiPlayer":
            self = .multiPlayer
            return

        case "SinglePlayer":
            self = .singlePlayer
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .coOp:
            SchemaOrg.serialize(term: "CoOp")

        case .multiPlayer:
            SchemaOrg.serialize(term: "MultiPlayer")

        case .singlePlayer:
            SchemaOrg.serialize(term: "SinglePlayer")

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
