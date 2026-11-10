extension SchemaOrg.ChemicalSubstance {

    public protocol `Protocol`:
        SchemaOrg.BioChemEntity.`Protocol`,
        SchemaOrg.Domain.ChemicalRole,
        SchemaOrg.Domain.PotentialUse
    {}
}

extension SchemaOrg.ChemicalSubstance.`Protocol` {

    public var chemicalComposition: Swift.String? {
        get { self[first: "chemicalComposition"] }
        set { self[first: "chemicalComposition"] = newValue }
    }
}
