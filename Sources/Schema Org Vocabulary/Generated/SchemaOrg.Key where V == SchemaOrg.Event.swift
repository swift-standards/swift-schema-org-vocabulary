extension SchemaOrg.Key where V == SchemaOrg.Event {

    public static var broadcastOfEvent: Self {
        Self("broadcastOfEvent")
    }

    public static var event: Self {
        Self("event")
    }

    public static var events: Self {
        Self("events")
    }

    public static var firstPerformance: Self {
        Self("firstPerformance")
    }

    public static var lifeEvent: Self {
        Self("lifeEvent")
    }

    public static var performerIn: Self {
        Self("performerIn")
    }

    public static var recordedAt: Self {
        Self("recordedAt")
    }

    public static var subEvent: Self {
        Self("subEvent")
    }

    public static var subEvents: Self {
        Self("subEvents")
    }

    public static var superEvent: Self {
        Self("superEvent")
    }
}
