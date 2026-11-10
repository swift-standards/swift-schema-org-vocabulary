extension SchemaOrg.TouristAttraction {

    public protocol `Protocol`:
        SchemaOrg.Place.`Protocol`,
        SchemaOrg.Domain.AvailableLanguage,
        SchemaOrg.Domain.TouristType
    {}
}
