extension SchemaOrg {

    public struct UserTweets: SchemaOrg.UserTweets.`Protocol`, Swift.Hashable {

        public static let type = "UserTweets"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.UserTweets {

    public init(
        id: Swift.String? = nil,
        additionalType: SchemaOrg.Range.AdditionalType? = nil,
        alternateName: Swift.String? = nil,
        description: SchemaOrg.Range.Description? = nil,
        disambiguatingDescription: Swift.String? = nil,
        identifier: SchemaOrg.Range.Identifier? = nil,
        image: SchemaOrg.Range.Image? = nil,
        mainEntityOfPage: SchemaOrg.Range.MainEntityOfPage? = nil,
        name: Swift.String? = nil,
        owner: SchemaOrg.Range.Owner? = nil,
        potentialAction: SchemaOrg.Action? = nil,
        sameAs: RFC_3986.URI? = nil,
        subjectOf: SchemaOrg.Range.SubjectOf? = nil,
        url: RFC_3986.URI? = nil,
        about: SchemaOrg.Thing? = nil,
        actor: SchemaOrg.Range.Actor? = nil,
        aggregateRating: SchemaOrg.AggregateRating? = nil,
        attendee: SchemaOrg.Range.Attendee? = nil,
        attendees: SchemaOrg.Range.Attendees? = nil,
        audience: SchemaOrg.Audience? = nil,
        composer: SchemaOrg.Range.Composer? = nil,
        contributor: SchemaOrg.Range.Contributor? = nil,
        director: SchemaOrg.Person? = nil,
        doorTime: SchemaOrg.Range.DoorTime? = nil,
        duration: SchemaOrg.Range.Duration? = nil,
        endDate: SchemaOrg.Range.EndDate? = nil,
        eventAttendanceMode: SchemaOrg.EventAttendanceModeEnumeration? = nil,
        eventSchedule: SchemaOrg.Schedule? = nil,
        eventStatus: SchemaOrg.EventStatusType? = nil,
        funder: SchemaOrg.Range.Funder? = nil,
        funding: SchemaOrg.Grant? = nil,
        hasParticipationOffer: SchemaOrg.Offer? = nil,
        hasSponsorshipOffer: SchemaOrg.Offer? = nil,
        inLanguage: SchemaOrg.Range.InLanguage? = nil,
        isAccessibleForFree: Swift.Bool? = nil,
        keywords: SchemaOrg.Range.Keywords? = nil,
        location: SchemaOrg.Range.Location? = nil,
        maximumAttendeeCapacity: Swift.Int? = nil,
        maximumPhysicalAttendeeCapacity: Swift.Int? = nil,
        maximumVirtualAttendeeCapacity: Swift.Int? = nil,
        offers: SchemaOrg.Range.Offers? = nil,
        organizer: SchemaOrg.Range.Organizer? = nil,
        performer: SchemaOrg.Range.Performer? = nil,
        performers: SchemaOrg.Range.Performers? = nil,
        previousStartDate: SchemaOrg.Range.PreviousStartDate? = nil,
        recordedIn: SchemaOrg.CreativeWork? = nil,
        remainingAttendeeCapacity: Swift.Int? = nil,
        review: SchemaOrg.Review? = nil,
        sponsor: SchemaOrg.Range.Sponsor? = nil,
        startDate: SchemaOrg.Range.StartDate? = nil,
        subEvent: SchemaOrg.Event? = nil,
        subEvents: SchemaOrg.Event? = nil,
        superEvent: SchemaOrg.Event? = nil,
        translator: SchemaOrg.Range.Translator? = nil,
        typicalAgeRange: Swift.String? = nil,
        workFeatured: SchemaOrg.CreativeWork? = nil,
        workPerformed: SchemaOrg.CreativeWork? = nil
    ) {
        self.init(node: W3C_JSON_LD.Node(id: id, types: [Self.type]))
        self.additionalType = additionalType
        self.alternateName = alternateName
        self.description = description
        self.disambiguatingDescription = disambiguatingDescription
        self.identifier = identifier
        self.image = image
        self.mainEntityOfPage = mainEntityOfPage
        self.name = name
        self.owner = owner
        self.potentialAction = potentialAction
        self.sameAs = sameAs
        self.subjectOf = subjectOf
        self.url = url
        self.about = about
        self.actor = actor
        self.aggregateRating = aggregateRating
        self.attendee = attendee
        self.attendees = attendees
        self.audience = audience
        self.composer = composer
        self.contributor = contributor
        self.director = director
        self.doorTime = doorTime
        self.duration = duration
        self.endDate = endDate
        self.eventAttendanceMode = eventAttendanceMode
        self.eventSchedule = eventSchedule
        self.eventStatus = eventStatus
        self.funder = funder
        self.funding = funding
        self.hasParticipationOffer = hasParticipationOffer
        self.hasSponsorshipOffer = hasSponsorshipOffer
        self.inLanguage = inLanguage
        self.isAccessibleForFree = isAccessibleForFree
        self.keywords = keywords
        self.location = location
        self.maximumAttendeeCapacity = maximumAttendeeCapacity
        self.maximumPhysicalAttendeeCapacity = maximumPhysicalAttendeeCapacity
        self.maximumVirtualAttendeeCapacity = maximumVirtualAttendeeCapacity
        self.offers = offers
        self.organizer = organizer
        self.performer = performer
        self.performers = performers
        self.previousStartDate = previousStartDate
        self.recordedIn = recordedIn
        self.remainingAttendeeCapacity = remainingAttendeeCapacity
        self.review = review
        self.sponsor = sponsor
        self.startDate = startDate
        self.subEvent = subEvent
        self.subEvents = subEvents
        self.superEvent = superEvent
        self.translator = translator
        self.typicalAgeRange = typicalAgeRange
        self.workFeatured = workFeatured
        self.workPerformed = workPerformed
    }
}
