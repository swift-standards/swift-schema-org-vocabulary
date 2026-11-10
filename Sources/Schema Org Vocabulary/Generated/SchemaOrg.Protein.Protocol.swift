extension SchemaOrg.Protein {

    public protocol `Protocol`:
        SchemaOrg.BioChemEntity.`Protocol`,
        SchemaOrg.Domain.HasBioPolymerSequence
    {}
}
