extension SchemaOrg.Key where V == SchemaOrg.Comment {

    public static var comment: Self {
        Self("comment")
    }

    public static var resultComment: Self {
        Self("resultComment")
    }
}
