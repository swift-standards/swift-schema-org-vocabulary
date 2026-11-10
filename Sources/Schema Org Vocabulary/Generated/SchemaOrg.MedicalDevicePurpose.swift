extension SchemaOrg {

    public enum MedicalDevicePurpose: SchemaOrg.Value, Swift.Hashable {

        case diagnostic

        case therapeutic

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalDevicePurpose {

    public var term: Swift.String? {
        switch self {
        case .diagnostic:
            "Diagnostic"

        case .therapeutic:
            "Therapeutic"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Diagnostic":
            self = .diagnostic
            return

        case "Therapeutic":
            self = .therapeutic
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .diagnostic:
            SchemaOrg.serialize(term: "Diagnostic")

        case .therapeutic:
            SchemaOrg.serialize(term: "Therapeutic")

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
