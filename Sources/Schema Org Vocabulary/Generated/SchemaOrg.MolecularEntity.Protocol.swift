extension SchemaOrg.MolecularEntity {

    public protocol `Protocol`:
        SchemaOrg.BioChemEntity.`Protocol`,
        SchemaOrg.Domain.ChemicalRole,
        SchemaOrg.Domain.PotentialUse
    {}
}

extension SchemaOrg.MolecularEntity.`Protocol` {

    public var inChI: Swift.String? {
        get { self[first: "inChI"] }
        set { self[first: "inChI"] = newValue }
    }

    public var inChIKey: Swift.String? {
        get { self[first: "inChIKey"] }
        set { self[first: "inChIKey"] = newValue }
    }

    public var iupacName: Swift.String? {
        get { self[first: "iupacName"] }
        set { self[first: "iupacName"] = newValue }
    }

    public var molecularFormula: Swift.String? {
        get { self[first: "molecularFormula"] }
        set { self[first: "molecularFormula"] = newValue }
    }

    public var molecularWeight: SchemaOrg.Range.MolecularWeight? {
        get { self[first: "molecularWeight"] }
        set { self[first: "molecularWeight"] = newValue }
    }

    public var monoisotopicMolecularWeight: SchemaOrg.Range.MonoisotopicMolecularWeight? {
        get { self[first: "monoisotopicMolecularWeight"] }
        set { self[first: "monoisotopicMolecularWeight"] = newValue }
    }

    public var smiles: Swift.String? {
        get { self[first: "smiles"] }
        set { self[first: "smiles"] = newValue }
    }
}
