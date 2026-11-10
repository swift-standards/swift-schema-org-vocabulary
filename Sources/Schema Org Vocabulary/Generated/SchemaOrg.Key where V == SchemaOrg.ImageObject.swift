extension SchemaOrg.Key where V == SchemaOrg.ImageObject {

    public static var diagram: Self {
        Self("diagram")
    }

    public static var primaryImageOfPage: Self {
        Self("primaryImageOfPage")
    }

    public static var thumbnail: Self {
        Self("thumbnail")
    }
}
