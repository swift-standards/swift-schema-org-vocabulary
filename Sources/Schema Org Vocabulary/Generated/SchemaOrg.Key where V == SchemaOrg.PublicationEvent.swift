extension SchemaOrg.Key where V == SchemaOrg.PublicationEvent {

    public static var publication: Self {
        Self("publication")
    }

    public static var releasedEvent: Self {
        Self("releasedEvent")
    }
}
