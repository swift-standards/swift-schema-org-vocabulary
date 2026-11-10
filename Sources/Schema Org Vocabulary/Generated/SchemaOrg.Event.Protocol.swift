extension SchemaOrg.Event {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.About,
        SchemaOrg.Domain.Actor,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.Audience,
        SchemaOrg.Domain.Composer,
        SchemaOrg.Domain.Contributor,
        SchemaOrg.Domain.Director,
        SchemaOrg.Domain.Duration,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.Funder,
        SchemaOrg.Domain.Funding,
        SchemaOrg.Domain.InLanguage,
        SchemaOrg.Domain.IsAccessibleForFree,
        SchemaOrg.Domain.Keywords,
        SchemaOrg.Domain.Location,
        SchemaOrg.Domain.MaximumAttendeeCapacity,
        SchemaOrg.Domain.Offers,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.Sponsor,
        SchemaOrg.Domain.StartDate,
        SchemaOrg.Domain.Translator,
        SchemaOrg.Domain.TypicalAgeRange
    {}
}

extension SchemaOrg.Event.`Protocol` {

    public var attendee: SchemaOrg.Range.Attendee? {
        get { self[first: "attendee"] }
        set { self[first: "attendee"] = newValue }
    }

    public var attendees: SchemaOrg.Range.Attendees? {
        get { self[first: "attendees"] }
        set { self[first: "attendees"] = newValue }
    }

    public var doorTime: SchemaOrg.Range.DoorTime? {
        get { self[first: "doorTime"] }
        set { self[first: "doorTime"] = newValue }
    }

    public var eventAttendanceMode: SchemaOrg.EventAttendanceModeEnumeration? {
        get { self[first: "eventAttendanceMode"] }
        set { self[first: "eventAttendanceMode"] = newValue }
    }

    public var eventSchedule: SchemaOrg.Schedule? {
        get { self[first: "eventSchedule"] }
        set { self[first: "eventSchedule"] = newValue }
    }

    public var eventStatus: SchemaOrg.EventStatusType? {
        get { self[first: "eventStatus"] }
        set { self[first: "eventStatus"] = newValue }
    }

    public var hasParticipationOffer: SchemaOrg.Offer? {
        get { self[first: "hasParticipationOffer"] }
        set { self[first: "hasParticipationOffer"] = newValue }
    }

    public var hasSponsorshipOffer: SchemaOrg.Offer? {
        get { self[first: "hasSponsorshipOffer"] }
        set { self[first: "hasSponsorshipOffer"] = newValue }
    }

    public var maximumPhysicalAttendeeCapacity: Swift.Int? {
        get { self[first: "maximumPhysicalAttendeeCapacity"] }
        set { self[first: "maximumPhysicalAttendeeCapacity"] = newValue }
    }

    public var maximumVirtualAttendeeCapacity: Swift.Int? {
        get { self[first: "maximumVirtualAttendeeCapacity"] }
        set { self[first: "maximumVirtualAttendeeCapacity"] = newValue }
    }

    public var organizer: SchemaOrg.Range.Organizer? {
        get { self[first: "organizer"] }
        set { self[first: "organizer"] = newValue }
    }

    public var performer: SchemaOrg.Range.Performer? {
        get { self[first: "performer"] }
        set { self[first: "performer"] = newValue }
    }

    public var performers: SchemaOrg.Range.Performers? {
        get { self[first: "performers"] }
        set { self[first: "performers"] = newValue }
    }

    public var previousStartDate: SchemaOrg.Range.PreviousStartDate? {
        get { self[first: "previousStartDate"] }
        set { self[first: "previousStartDate"] = newValue }
    }

    public var recordedIn: SchemaOrg.CreativeWork? {
        get { self[first: "recordedIn"] }
        set { self[first: "recordedIn"] = newValue }
    }

    public var remainingAttendeeCapacity: Swift.Int? {
        get { self[first: "remainingAttendeeCapacity"] }
        set { self[first: "remainingAttendeeCapacity"] = newValue }
    }

    public var subEvent: SchemaOrg.Event? {
        get { self[first: "subEvent"] }
        set { self[first: "subEvent"] = newValue }
    }

    public var subEvents: SchemaOrg.Event? {
        get { self[first: "subEvents"] }
        set { self[first: "subEvents"] = newValue }
    }

    public var superEvent: SchemaOrg.Event? {
        get { self[first: "superEvent"] }
        set { self[first: "superEvent"] = newValue }
    }

    public var workFeatured: SchemaOrg.CreativeWork? {
        get { self[first: "workFeatured"] }
        set { self[first: "workFeatured"] = newValue }
    }

    public var workPerformed: SchemaOrg.CreativeWork? {
        get { self[first: "workPerformed"] }
        set { self[first: "workPerformed"] = newValue }
    }
}
