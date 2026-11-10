extension SchemaOrg.Key where V == SchemaOrg.Airport {

    public static var arrivalAirport: Self {
        Self("arrivalAirport")
    }

    public static var departureAirport: Self {
        Self("departureAirport")
    }
}
