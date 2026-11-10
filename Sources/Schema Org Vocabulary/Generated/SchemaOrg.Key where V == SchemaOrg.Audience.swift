extension SchemaOrg.Key where V == SchemaOrg.Audience {

    public static var audience: Self {
        Self("audience")
    }

    public static var permitAudience: Self {
        Self("permitAudience")
    }

    public static var serviceAudience: Self {
        Self("serviceAudience")
    }
}
