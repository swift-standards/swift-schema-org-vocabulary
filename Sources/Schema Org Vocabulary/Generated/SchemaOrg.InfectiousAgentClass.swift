extension SchemaOrg {

    public enum InfectiousAgentClass: SchemaOrg.Value, Swift.Hashable {

        case bacteria

        case fungus

        case multicellularParasite

        case prion

        case protozoa

        case virus

        case instance(Instance)
    }
}

extension SchemaOrg.InfectiousAgentClass {

    public var term: Swift.String? {
        switch self {
        case .bacteria:
            "Bacteria"

        case .fungus:
            "Fungus"

        case .multicellularParasite:
            "MulticellularParasite"

        case .prion:
            "Prion"

        case .protozoa:
            "Protozoa"

        case .virus:
            "Virus"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Bacteria":
            self = .bacteria
            return

        case "Fungus":
            self = .fungus
            return

        case "MulticellularParasite":
            self = .multicellularParasite
            return

        case "Prion":
            self = .prion
            return

        case "Protozoa":
            self = .protozoa
            return

        case "Virus":
            self = .virus
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .bacteria:
            SchemaOrg.serialize(term: "Bacteria")

        case .fungus:
            SchemaOrg.serialize(term: "Fungus")

        case .multicellularParasite:
            SchemaOrg.serialize(term: "MulticellularParasite")

        case .prion:
            SchemaOrg.serialize(term: "Prion")

        case .protozoa:
            SchemaOrg.serialize(term: "Protozoa")

        case .virus:
            SchemaOrg.serialize(term: "Virus")

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
