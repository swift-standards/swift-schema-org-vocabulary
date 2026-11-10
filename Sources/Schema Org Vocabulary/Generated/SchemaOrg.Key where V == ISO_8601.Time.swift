extension SchemaOrg.Key where V == ISO_8601.Time {

    public static var closes: Self {
        Self("closes")
    }

    public static var cutoffTime: Self {
        Self("cutoffTime")
    }

    public static var opens: Self {
        Self("opens")
    }
}
