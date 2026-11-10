extension SchemaOrg.Key where V == SchemaOrg.CreativeWorkSeason {

    public static var containsSeason: Self {
        Self("containsSeason")
    }

    public static var partOfSeason: Self {
        Self("partOfSeason")
    }

    public static var seasons: Self {
        Self("seasons")
    }
}
