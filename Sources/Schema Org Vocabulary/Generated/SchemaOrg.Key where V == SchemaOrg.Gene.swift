extension SchemaOrg.Key where V == SchemaOrg.Gene {

    public static var alternativeOf: Self {
        Self("alternativeOf")
    }

    public static var isEncodedByBioChemEntity: Self {
        Self("isEncodedByBioChemEntity")
    }
}
