extension SchemaOrg {

    public enum MedicineSystem: SchemaOrg.Value, Swift.Hashable {

        case ayurvedic

        case chiropractic

        case homeopathic

        case osteopathic

        case traditionalChinese

        case westernConventional

        case instance(Instance)
    }
}

extension SchemaOrg.MedicineSystem {

    public var term: Swift.String? {
        switch self {
        case .ayurvedic:
            "Ayurvedic"

        case .chiropractic:
            "Chiropractic"

        case .homeopathic:
            "Homeopathic"

        case .osteopathic:
            "Osteopathic"

        case .traditionalChinese:
            "TraditionalChinese"

        case .westernConventional:
            "WesternConventional"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Ayurvedic":
            self = .ayurvedic
            return

        case "Chiropractic":
            self = .chiropractic
            return

        case "Homeopathic":
            self = .homeopathic
            return

        case "Osteopathic":
            self = .osteopathic
            return

        case "TraditionalChinese":
            self = .traditionalChinese
            return

        case "WesternConventional":
            self = .westernConventional
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .ayurvedic:
            SchemaOrg.serialize(term: "Ayurvedic")

        case .chiropractic:
            SchemaOrg.serialize(term: "Chiropractic")

        case .homeopathic:
            SchemaOrg.serialize(term: "Homeopathic")

        case .osteopathic:
            SchemaOrg.serialize(term: "Osteopathic")

        case .traditionalChinese:
            SchemaOrg.serialize(term: "TraditionalChinese")

        case .westernConventional:
            SchemaOrg.serialize(term: "WesternConventional")

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
