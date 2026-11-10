extension SchemaOrg.BioChemEntity {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.Funding
    {}
}

extension SchemaOrg.BioChemEntity.`Protocol` {

    public var associatedDisease: SchemaOrg.Range.AssociatedDisease? {
        get { self[first: "associatedDisease"] }
        set { self[first: "associatedDisease"] = newValue }
    }

    public var bioChemInteraction: SchemaOrg.BioChemEntity? {
        get { self[first: "bioChemInteraction"] }
        set { self[first: "bioChemInteraction"] = newValue }
    }

    public var bioChemSimilarity: SchemaOrg.BioChemEntity? {
        get { self[first: "bioChemSimilarity"] }
        set { self[first: "bioChemSimilarity"] = newValue }
    }

    public var biologicalRole: SchemaOrg.DefinedTerm? {
        get { self[first: "biologicalRole"] }
        set { self[first: "biologicalRole"] = newValue }
    }

    public var hasBioChemEntityPart: SchemaOrg.BioChemEntity? {
        get { self[first: "hasBioChemEntityPart"] }
        set { self[first: "hasBioChemEntityPart"] = newValue }
    }

    public var hasMolecularFunction: SchemaOrg.Range.HasMolecularFunction? {
        get { self[first: "hasMolecularFunction"] }
        set { self[first: "hasMolecularFunction"] = newValue }
    }

    public var hasRepresentation: SchemaOrg.Range.HasRepresentation? {
        get { self[first: "hasRepresentation"] }
        set { self[first: "hasRepresentation"] = newValue }
    }

    public var isEncodedByBioChemEntity: SchemaOrg.Gene? {
        get { self[first: "isEncodedByBioChemEntity"] }
        set { self[first: "isEncodedByBioChemEntity"] = newValue }
    }

    public var isInvolvedInBiologicalProcess: SchemaOrg.Range.IsInvolvedInBiologicalProcess? {
        get { self[first: "isInvolvedInBiologicalProcess"] }
        set { self[first: "isInvolvedInBiologicalProcess"] = newValue }
    }

    public var isLocatedInSubcellularLocation: SchemaOrg.Range.IsLocatedInSubcellularLocation? {
        get { self[first: "isLocatedInSubcellularLocation"] }
        set { self[first: "isLocatedInSubcellularLocation"] = newValue }
    }

    public var isPartOfBioChemEntity: SchemaOrg.BioChemEntity? {
        get { self[first: "isPartOfBioChemEntity"] }
        set { self[first: "isPartOfBioChemEntity"] = newValue }
    }

    public var taxonomicRange: SchemaOrg.Range.TaxonomicRange? {
        get { self[first: "taxonomicRange"] }
        set { self[first: "taxonomicRange"] = newValue }
    }
}
