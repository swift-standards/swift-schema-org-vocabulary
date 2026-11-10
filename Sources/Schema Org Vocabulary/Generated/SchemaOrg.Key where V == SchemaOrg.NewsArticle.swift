extension SchemaOrg.Key where V == SchemaOrg.NewsArticle {

    public static var associatedArticle: Self {
        Self("associatedArticle")
    }
}
