extension SchemaOrg.Key where V == SchemaOrg.Episode {

    public static var episode: Self {
        Self("episode")
    }

    public static var episodes: Self {
        Self("episodes")
    }

    public static var partOfEpisode: Self {
        Self("partOfEpisode")
    }
}
