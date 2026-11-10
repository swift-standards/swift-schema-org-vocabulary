extension SchemaOrg {

    public struct Schedule: SchemaOrg.Schedule.`Protocol`, Swift.Hashable {

        public static let type = "Schedule"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Schedule {

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
        byDay: SchemaOrg.Range.ByDay? = nil,
        byMonth: Swift.Int? = nil,
        byMonthDay: Swift.Int? = nil,
        byMonthWeek: Swift.Int? = nil,
        duration: SchemaOrg.Range.Duration? = nil,
        endDate: SchemaOrg.Range.EndDate? = nil,
        endTime: SchemaOrg.Range.EndTime? = nil,
        exceptDate: SchemaOrg.Range.ExceptDate? = nil,
        repeatCount: Swift.Int? = nil,
        repeatFrequency: SchemaOrg.Range.RepeatFrequency? = nil,
        scheduleTimezone: Swift.String? = nil,
        startDate: SchemaOrg.Range.StartDate? = nil,
        startTime: SchemaOrg.Range.StartTime? = nil
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
        self.byDay = byDay
        self.byMonth = byMonth
        self.byMonthDay = byMonthDay
        self.byMonthWeek = byMonthWeek
        self.duration = duration
        self.endDate = endDate
        self.endTime = endTime
        self.exceptDate = exceptDate
        self.repeatCount = repeatCount
        self.repeatFrequency = repeatFrequency
        self.scheduleTimezone = scheduleTimezone
        self.startDate = startDate
        self.startTime = startTime
    }
}
