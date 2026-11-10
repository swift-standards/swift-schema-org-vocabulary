extension SchemaOrg.Key where V == SchemaOrg.Diet {

    public static var diet: Self {
        Self("diet")
    }

    public static var exerciseRelatedDiet: Self {
        Self("exerciseRelatedDiet")
    }
}
