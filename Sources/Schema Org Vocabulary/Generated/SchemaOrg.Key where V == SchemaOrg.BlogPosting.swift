extension SchemaOrg.Key where V == SchemaOrg.BlogPosting {

    public static var blogPost: Self {
        Self("blogPost")
    }

    public static var blogPosts: Self {
        Self("blogPosts")
    }

    public static var liveBlogUpdate: Self {
        Self("liveBlogUpdate")
    }
}
