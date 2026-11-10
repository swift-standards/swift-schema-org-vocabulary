extension SchemaOrg.Schedule {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Duration,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.EndTime,
        SchemaOrg.Domain.StartDate,
        SchemaOrg.Domain.StartTime
    {}
}

extension SchemaOrg.Schedule.`Protocol` {

    public var byDay: SchemaOrg.Range.ByDay? {
        get { self[first: "byDay"] }
        set { self[first: "byDay"] = newValue }
    }

    public var byMonth: Swift.Int? {
        get { self[first: "byMonth"] }
        set { self[first: "byMonth"] = newValue }
    }

    public var byMonthDay: Swift.Int? {
        get { self[first: "byMonthDay"] }
        set { self[first: "byMonthDay"] = newValue }
    }

    public var byMonthWeek: Swift.Int? {
        get { self[first: "byMonthWeek"] }
        set { self[first: "byMonthWeek"] = newValue }
    }

    public var exceptDate: SchemaOrg.Range.ExceptDate? {
        get { self[first: "exceptDate"] }
        set { self[first: "exceptDate"] = newValue }
    }

    public var repeatCount: Swift.Int? {
        get { self[first: "repeatCount"] }
        set { self[first: "repeatCount"] = newValue }
    }

    public var repeatFrequency: SchemaOrg.Range.RepeatFrequency? {
        get { self[first: "repeatFrequency"] }
        set { self[first: "repeatFrequency"] = newValue }
    }

    public var scheduleTimezone: Swift.String? {
        get { self[first: "scheduleTimezone"] }
        set { self[first: "scheduleTimezone"] = newValue }
    }
}
