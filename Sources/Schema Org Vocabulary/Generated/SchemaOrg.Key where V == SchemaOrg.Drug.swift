extension SchemaOrg.Key where V == SchemaOrg.Drug {

    public static var affectedBy: Self {
        Self("affectedBy")
    }

    public static var drug: Self {
        Self("drug")
    }

    public static var interactingDrug: Self {
        Self("interactingDrug")
    }

    public static var relatedDrug: Self {
        Self("relatedDrug")
    }
}
