extension SchemaOrg {

    public enum EnergyEfficiencyEnumeration: SchemaOrg.Value, Swift.Hashable {

        case euEnergyEfficiencyEnumeration(SchemaOrg.EUEnergyEfficiencyEnumeration)

        case energyStarEnergyEfficiencyEnumeration(SchemaOrg.EnergyStarEnergyEfficiencyEnumeration)

        case instance(Instance)
    }
}

extension SchemaOrg.EnergyEfficiencyEnumeration {

    public var term: Swift.String? {
        switch self {
        case .euEnergyEfficiencyEnumeration(let value):
            value.term

        case .energyStarEnergyEfficiencyEnumeration(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.EUEnergyEfficiencyEnumeration(term: term) {
            self = .euEnergyEfficiencyEnumeration(value)
            return
        }
        if let value = SchemaOrg.EnergyStarEnergyEfficiencyEnumeration(term: term) {
            self = .energyStarEnergyEfficiencyEnumeration(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .euEnergyEfficiencyEnumeration(let value):
            SchemaOrg.EUEnergyEfficiencyEnumeration.serialize(value)

        case .energyStarEnergyEfficiencyEnumeration(let value):
            SchemaOrg.EnergyStarEnergyEfficiencyEnumeration.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.EUEnergyEfficiencyEnumeration.deserialize(value) {
                return .euEnergyEfficiencyEnumeration(value)
            }
            if let value = SchemaOrg.EnergyStarEnergyEfficiencyEnumeration.deserialize(value) {
                return .energyStarEnergyEfficiencyEnumeration(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
