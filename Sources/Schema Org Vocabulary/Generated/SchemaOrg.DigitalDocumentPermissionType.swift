extension SchemaOrg {

    public enum DigitalDocumentPermissionType: SchemaOrg.Value, Swift.Hashable {

        case commentPermission

        case readPermission

        case writePermission

        case instance(Instance)
    }
}

extension SchemaOrg.DigitalDocumentPermissionType {

    public var term: Swift.String? {
        switch self {
        case .commentPermission:
            "CommentPermission"

        case .readPermission:
            "ReadPermission"

        case .writePermission:
            "WritePermission"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CommentPermission":
            self = .commentPermission
            return

        case "ReadPermission":
            self = .readPermission
            return

        case "WritePermission":
            self = .writePermission
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .commentPermission:
            SchemaOrg.serialize(term: "CommentPermission")

        case .readPermission:
            SchemaOrg.serialize(term: "ReadPermission")

        case .writePermission:
            SchemaOrg.serialize(term: "WritePermission")

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
