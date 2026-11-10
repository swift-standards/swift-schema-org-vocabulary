extension SchemaOrg.EnergyConsumptionDetails {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.EnergyConsumptionDetails.`Protocol` {

    public var energyEfficiencyScaleMax: SchemaOrg.EUEnergyEfficiencyEnumeration? {
        get { self[first: "energyEfficiencyScaleMax"] }
        set { self[first: "energyEfficiencyScaleMax"] = newValue }
    }

    public var energyEfficiencyScaleMin: SchemaOrg.EUEnergyEfficiencyEnumeration? {
        get { self[first: "energyEfficiencyScaleMin"] }
        set { self[first: "energyEfficiencyScaleMin"] = newValue }
    }

    public var hasEnergyEfficiencyCategory: SchemaOrg.EnergyEfficiencyEnumeration? {
        get { self[first: "hasEnergyEfficiencyCategory"] }
        set { self[first: "hasEnergyEfficiencyCategory"] = newValue }
    }
}
