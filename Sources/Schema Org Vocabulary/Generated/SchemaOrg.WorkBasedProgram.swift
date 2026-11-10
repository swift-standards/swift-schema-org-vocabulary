extension SchemaOrg {

    public struct WorkBasedProgram: SchemaOrg.WorkBasedProgram.`Protocol`, Swift.Hashable {

        public static let type = "WorkBasedProgram"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.WorkBasedProgram {

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
        occupationalCategory: SchemaOrg.Range.OccupationalCategory? = nil,
        trainingSalary: SchemaOrg.MonetaryAmountDistribution? = nil,
        applicationDeadline: SchemaOrg.Range.ApplicationDeadline? = nil,
        applicationStartDate: ISO_8601.CalendarDate? = nil,
        dayOfWeek: SchemaOrg.DayOfWeek? = nil,
        educationalCredentialAwarded: SchemaOrg.Range.EducationalCredentialAwarded? = nil,
        educationalProgramMode: SchemaOrg.Range.EducationalProgramMode? = nil,
        endDate: SchemaOrg.Range.EndDate? = nil,
        financialAidEligible: SchemaOrg.Range.FinancialAidEligible? = nil,
        hasCourse: SchemaOrg.Course? = nil,
        maximumEnrollment: Swift.Int? = nil,
        numberOfCredits: SchemaOrg.Range.NumberOfCredits? = nil,
        occupationalCredentialAwarded: SchemaOrg.Range.OccupationalCredentialAwarded? = nil,
        offers: SchemaOrg.Range.Offers? = nil,
        programPrerequisites: SchemaOrg.Range.ProgramPrerequisites? = nil,
        programType: SchemaOrg.Range.ProgramType? = nil,
        provider: SchemaOrg.Range.Provider? = nil,
        salaryUponCompletion: SchemaOrg.MonetaryAmountDistribution? = nil,
        startDate: SchemaOrg.Range.StartDate? = nil,
        termDuration: ISO_8601.Duration? = nil,
        termsPerYear: Swift.Double? = nil,
        timeOfDay: Swift.String? = nil,
        timeToComplete: ISO_8601.Duration? = nil,
        typicalCreditsPerTerm: SchemaOrg.Range.TypicalCreditsPerTerm? = nil
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
        self.occupationalCategory = occupationalCategory
        self.trainingSalary = trainingSalary
        self.applicationDeadline = applicationDeadline
        self.applicationStartDate = applicationStartDate
        self.dayOfWeek = dayOfWeek
        self.educationalCredentialAwarded = educationalCredentialAwarded
        self.educationalProgramMode = educationalProgramMode
        self.endDate = endDate
        self.financialAidEligible = financialAidEligible
        self.hasCourse = hasCourse
        self.maximumEnrollment = maximumEnrollment
        self.numberOfCredits = numberOfCredits
        self.occupationalCredentialAwarded = occupationalCredentialAwarded
        self.offers = offers
        self.programPrerequisites = programPrerequisites
        self.programType = programType
        self.provider = provider
        self.salaryUponCompletion = salaryUponCompletion
        self.startDate = startDate
        self.termDuration = termDuration
        self.termsPerYear = termsPerYear
        self.timeOfDay = timeOfDay
        self.timeToComplete = timeToComplete
        self.typicalCreditsPerTerm = typicalCreditsPerTerm
    }
}
