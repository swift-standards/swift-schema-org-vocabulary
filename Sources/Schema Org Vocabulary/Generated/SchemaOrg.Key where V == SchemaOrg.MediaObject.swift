extension SchemaOrg.Key where V == SchemaOrg.MediaObject {

    public static var associatedMedia: Self {
        Self("associatedMedia")
    }

    public static var encoding: Self {
        Self("encoding")
    }

    public static var encodings: Self {
        Self("encodings")
    }

    public static var mediaItemAppearance: Self {
        Self("mediaItemAppearance")
    }
}
