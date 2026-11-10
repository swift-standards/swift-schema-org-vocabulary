extension SchemaOrg.OpeningHoursSpecification {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.DayOfWeek,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidThrough
    {}
}

extension SchemaOrg.OpeningHoursSpecification.`Protocol` {

    public var closes: ISO_8601.Time? {
        get { self[first: "closes"] }
        set { self[first: "closes"] = newValue }
    }

    public var opens: ISO_8601.Time? {
        get { self[first: "opens"] }
        set { self[first: "opens"] = newValue }
    }
}
