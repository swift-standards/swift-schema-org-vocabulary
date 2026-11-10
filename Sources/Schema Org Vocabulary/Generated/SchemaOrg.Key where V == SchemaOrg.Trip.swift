extension SchemaOrg.Key where V == SchemaOrg.Trip {

    public static var partOfTrip: Self {
        Self("partOfTrip")
    }

    public static var subTrip: Self {
        Self("subTrip")
    }
}
