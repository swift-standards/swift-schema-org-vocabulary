extension SchemaOrg.Key where V == SchemaOrg.BioChemEntity {

    public static var bioChemInteraction: Self {
        Self("bioChemInteraction")
    }

    public static var bioChemSimilarity: Self {
        Self("bioChemSimilarity")
    }

    public static var encodesBioChemEntity: Self {
        Self("encodesBioChemEntity")
    }

    public static var hasBioChemEntityPart: Self {
        Self("hasBioChemEntityPart")
    }

    public static var isPartOfBioChemEntity: Self {
        Self("isPartOfBioChemEntity")
    }
}
