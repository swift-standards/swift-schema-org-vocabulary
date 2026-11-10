extension SchemaOrg.Key where V == SchemaOrg.Schedule {

    public static var courseSchedule: Self {
        Self("courseSchedule")
    }

    public static var eventSchedule: Self {
        Self("eventSchedule")
    }
}
