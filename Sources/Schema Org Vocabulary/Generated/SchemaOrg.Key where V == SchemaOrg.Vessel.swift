extension SchemaOrg.Key where V == SchemaOrg.Vessel {

    public static var bloodSupply: Self {
        Self("bloodSupply")
    }

    public static var drainsTo: Self {
        Self("drainsTo")
    }

    public static var originatesFrom: Self {
        Self("originatesFrom")
    }

    public static var runsTo: Self {
        Self("runsTo")
    }
}
