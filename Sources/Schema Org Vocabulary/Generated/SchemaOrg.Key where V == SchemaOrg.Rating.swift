extension SchemaOrg.Key where V == SchemaOrg.Rating {

    public static var certificationRating: Self {
        Self("certificationRating")
    }

    public static var reviewRating: Self {
        Self("reviewRating")
    }

    public static var starRating: Self {
        Self("starRating")
    }
}
