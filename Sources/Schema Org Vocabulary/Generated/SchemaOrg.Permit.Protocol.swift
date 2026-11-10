extension SchemaOrg.Permit {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.IssuedBy,
        SchemaOrg.Domain.ValidFor,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidIn
    {}
}

extension SchemaOrg.Permit.`Protocol` {

    public var issuedThrough: SchemaOrg.Service? {
        get { self[first: "issuedThrough"] }
        set { self[first: "issuedThrough"] = newValue }
    }

    public var permitAudience: SchemaOrg.Audience? {
        get { self[first: "permitAudience"] }
        set { self[first: "permitAudience"] = newValue }
    }

    public var validUntil: ISO_8601.CalendarDate? {
        get { self[first: "validUntil"] }
        set { self[first: "validUntil"] = newValue }
    }
}
