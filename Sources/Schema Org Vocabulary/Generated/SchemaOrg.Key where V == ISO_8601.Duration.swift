extension SchemaOrg.Key where V == ISO_8601.Duration {

    public static var billingPeriod: Self {
        Self("billingPeriod")
    }

    public static var cookTime: Self {
        Self("cookTime")
    }

    public static var gracePeriod: Self {
        Self("gracePeriod")
    }

    public static var performTime: Self {
        Self("performTime")
    }

    public static var prepTime: Self {
        Self("prepTime")
    }

    public static var processingTime: Self {
        Self("processingTime")
    }

    public static var termDuration: Self {
        Self("termDuration")
    }

    public static var timeRequired: Self {
        Self("timeRequired")
    }

    public static var timeToComplete: Self {
        Self("timeToComplete")
    }

    public static var totalTime: Self {
        Self("totalTime")
    }

    public static var validFor: Self {
        Self("validFor")
    }
}
