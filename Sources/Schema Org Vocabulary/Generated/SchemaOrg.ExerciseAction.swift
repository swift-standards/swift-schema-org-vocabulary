extension SchemaOrg {

    public struct ExerciseAction: SchemaOrg.ExerciseAction.`Protocol`, Swift.Hashable {

        public static let type = "ExerciseAction"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.ExerciseAction {

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
        course: SchemaOrg.Place? = nil,
        diet: SchemaOrg.Diet? = nil,
        distance: Swift.String? = nil,
        exerciseCourse: SchemaOrg.Place? = nil,
        exercisePlan: SchemaOrg.ExercisePlan? = nil,
        exerciseRelatedDiet: SchemaOrg.Diet? = nil,
        exerciseType: Swift.String? = nil,
        fromLocation: SchemaOrg.Place? = nil,
        opponent: SchemaOrg.Person? = nil,
        sportsActivityLocation: SchemaOrg.SportsActivityLocation? = nil,
        sportsEvent: SchemaOrg.SportsEvent? = nil,
        sportsTeam: SchemaOrg.SportsTeam? = nil,
        toLocation: SchemaOrg.Place? = nil,
        audience: SchemaOrg.Audience? = nil,
        event: SchemaOrg.Event? = nil,
        actionProcess: SchemaOrg.HowTo? = nil,
        actionStatus: SchemaOrg.ActionStatusType? = nil,
        agent: SchemaOrg.Range.Agent? = nil,
        endTime: SchemaOrg.Range.EndTime? = nil,
        error: SchemaOrg.Thing? = nil,
        instrument: SchemaOrg.Thing? = nil,
        location: SchemaOrg.Range.Location? = nil,
        object: SchemaOrg.Thing? = nil,
        participant: SchemaOrg.Range.Participant? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        result: SchemaOrg.Thing? = nil,
        startTime: SchemaOrg.Range.StartTime? = nil,
        target: SchemaOrg.Range.Target? = nil
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
        self.course = course
        self.diet = diet
        self.distance = distance
        self.exerciseCourse = exerciseCourse
        self.exercisePlan = exercisePlan
        self.exerciseRelatedDiet = exerciseRelatedDiet
        self.exerciseType = exerciseType
        self.fromLocation = fromLocation
        self.opponent = opponent
        self.sportsActivityLocation = sportsActivityLocation
        self.sportsEvent = sportsEvent
        self.sportsTeam = sportsTeam
        self.toLocation = toLocation
        self.audience = audience
        self.event = event
        self.actionProcess = actionProcess
        self.actionStatus = actionStatus
        self.agent = agent
        self.endTime = endTime
        self.error = error
        self.instrument = instrument
        self.location = location
        self.object = object
        self.participant = participant
        self.provider = provider
        self.result = result
        self.startTime = startTime
        self.target = target
    }
}
