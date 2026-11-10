extension SchemaOrg.Domain {

    public protocol ChemicalRole: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ChemicalRole {

    public var chemicalRole: SchemaOrg.DefinedTerm? {
        get { self[first: "chemicalRole"] }
        set { self[first: "chemicalRole"] = newValue }
    }
}
