extension SchemaOrg {

    public enum GenderType: SchemaOrg.Value, Swift.Hashable {

        case female

        case male

        case instance(Instance)
    }
}

extension SchemaOrg.GenderType {

    public var term: Swift.String? {
        switch self {
        case .female:
            "Female"

        case .male:
            "Male"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Female":
            self = .female
            return

        case "Male":
            self = .male
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .female:
            SchemaOrg.serialize(term: "Female")

        case .male:
            SchemaOrg.serialize(term: "Male")

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
