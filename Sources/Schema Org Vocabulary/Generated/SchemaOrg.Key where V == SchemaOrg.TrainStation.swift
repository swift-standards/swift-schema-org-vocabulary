extension SchemaOrg.Key where V == SchemaOrg.TrainStation {

    public static var arrivalStation: Self {
        Self("arrivalStation")
    }

    public static var departureStation: Self {
        Self("departureStation")
    }
}
