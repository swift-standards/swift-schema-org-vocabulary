extension SchemaOrg {

    public enum EnergyStarEnergyEfficiencyEnumeration: SchemaOrg.Value, Swift.Hashable {

        case energyStarCertified

        case instance(Instance)
    }
}

extension SchemaOrg.EnergyStarEnergyEfficiencyEnumeration {

    public var term: Swift.String? {
        switch self {
        case .energyStarCertified:
            "EnergyStarCertified"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "EnergyStarCertified":
            self = .energyStarCertified
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .energyStarCertified:
            SchemaOrg.serialize(term: "EnergyStarCertified")

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
