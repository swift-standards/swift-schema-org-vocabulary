extension SchemaOrg {

    public enum CertificationStatusEnumeration: SchemaOrg.Value, Swift.Hashable {

        case certificationActive

        case certificationInactive

        case instance(Instance)
    }
}

extension SchemaOrg.CertificationStatusEnumeration {

    public var term: Swift.String? {
        switch self {
        case .certificationActive:
            "CertificationActive"

        case .certificationInactive:
            "CertificationInactive"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "CertificationActive":
            self = .certificationActive
            return

        case "CertificationInactive":
            self = .certificationInactive
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .certificationActive:
            SchemaOrg.serialize(term: "CertificationActive")

        case .certificationInactive:
            SchemaOrg.serialize(term: "CertificationInactive")

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
