extension SchemaOrg.TouristDestination {

    public protocol `Protocol`:
        SchemaOrg.Place.`Protocol`,
        SchemaOrg.Domain.TouristType
    {}
}

extension SchemaOrg.TouristDestination.`Protocol` {

    public var includesAttraction: SchemaOrg.TouristAttraction? {
        get { self[first: "includesAttraction"] }
        set { self[first: "includesAttraction"] = newValue }
    }
}
