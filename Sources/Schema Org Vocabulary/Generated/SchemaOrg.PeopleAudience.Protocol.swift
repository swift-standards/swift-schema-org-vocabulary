extension SchemaOrg.PeopleAudience {

    public protocol `Protocol`:
        SchemaOrg.Audience.`Protocol`,
        SchemaOrg.Domain.HealthCondition,
        SchemaOrg.Domain.SuggestedAge,
        SchemaOrg.Domain.SuggestedGender,
        SchemaOrg.Domain.SuggestedMeasurement
    {}
}

extension SchemaOrg.PeopleAudience.`Protocol` {

    public var requiredGender: Swift.String? {
        get { self[first: "requiredGender"] }
        set { self[first: "requiredGender"] = newValue }
    }

    public var requiredMaxAge: Swift.Int? {
        get { self[first: "requiredMaxAge"] }
        set { self[first: "requiredMaxAge"] = newValue }
    }

    public var requiredMinAge: Swift.Int? {
        get { self[first: "requiredMinAge"] }
        set { self[first: "requiredMinAge"] = newValue }
    }

    public var suggestedMaxAge: Swift.Double? {
        get { self[first: "suggestedMaxAge"] }
        set { self[first: "suggestedMaxAge"] = newValue }
    }

    public var suggestedMinAge: Swift.Double? {
        get { self[first: "suggestedMinAge"] }
        set { self[first: "suggestedMinAge"] = newValue }
    }
}
