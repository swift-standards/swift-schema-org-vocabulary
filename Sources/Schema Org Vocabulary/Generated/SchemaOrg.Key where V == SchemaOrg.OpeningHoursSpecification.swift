extension SchemaOrg.Key where V == SchemaOrg.OpeningHoursSpecification {

    public static var hoursAvailable: Self {
        Self("hoursAvailable")
    }

    public static var openingHoursSpecification: Self {
        Self("openingHoursSpecification")
    }

    public static var seasonalOverride: Self {
        Self("seasonalOverride")
    }

    public static var specialOpeningHoursSpecification: Self {
        Self("specialOpeningHoursSpecification")
    }
}
