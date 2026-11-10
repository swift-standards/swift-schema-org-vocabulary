extension SchemaOrg.Gene {

    public protocol `Protocol`:
        SchemaOrg.BioChemEntity.`Protocol`,
        SchemaOrg.Domain.HasBioPolymerSequence
    {}
}

extension SchemaOrg.Gene.`Protocol` {

    public var alternativeOf: SchemaOrg.Gene? {
        get { self[first: "alternativeOf"] }
        set { self[first: "alternativeOf"] = newValue }
    }

    public var encodesBioChemEntity: SchemaOrg.BioChemEntity? {
        get { self[first: "encodesBioChemEntity"] }
        set { self[first: "encodesBioChemEntity"] = newValue }
    }

    public var expressedIn: SchemaOrg.Range.ExpressedIn? {
        get { self[first: "expressedIn"] }
        set { self[first: "expressedIn"] = newValue }
    }
}
