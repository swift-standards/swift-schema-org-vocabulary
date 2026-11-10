extension SchemaOrg.EducationalOccupationalProgram {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.DayOfWeek,
        SchemaOrg.Domain.EducationalCredentialAwarded,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.FinancialAidEligible,
        SchemaOrg.Domain.NumberOfCredits,
        SchemaOrg.Domain.OccupationalCategory,
        SchemaOrg.Domain.OccupationalCredentialAwarded,
        SchemaOrg.Domain.Offers,
        SchemaOrg.Domain.Provider,
        SchemaOrg.Domain.StartDate,
        SchemaOrg.Domain.TrainingSalary
    {}
}

extension SchemaOrg.EducationalOccupationalProgram.`Protocol` {

    public var applicationDeadline: SchemaOrg.Range.ApplicationDeadline? {
        get { self[first: "applicationDeadline"] }
        set { self[first: "applicationDeadline"] = newValue }
    }

    public var applicationStartDate: ISO_8601.CalendarDate? {
        get { self[first: "applicationStartDate"] }
        set { self[first: "applicationStartDate"] = newValue }
    }

    public var educationalProgramMode: SchemaOrg.Range.EducationalProgramMode? {
        get { self[first: "educationalProgramMode"] }
        set { self[first: "educationalProgramMode"] = newValue }
    }

    public var hasCourse: SchemaOrg.Course? {
        get { self[first: "hasCourse"] }
        set { self[first: "hasCourse"] = newValue }
    }

    public var maximumEnrollment: Swift.Int? {
        get { self[first: "maximumEnrollment"] }
        set { self[first: "maximumEnrollment"] = newValue }
    }

    public var programPrerequisites: SchemaOrg.Range.ProgramPrerequisites? {
        get { self[first: "programPrerequisites"] }
        set { self[first: "programPrerequisites"] = newValue }
    }

    public var programType: SchemaOrg.Range.ProgramType? {
        get { self[first: "programType"] }
        set { self[first: "programType"] = newValue }
    }

    public var salaryUponCompletion: SchemaOrg.MonetaryAmountDistribution? {
        get { self[first: "salaryUponCompletion"] }
        set { self[first: "salaryUponCompletion"] = newValue }
    }

    public var termDuration: ISO_8601.Duration? {
        get { self[first: "termDuration"] }
        set { self[first: "termDuration"] = newValue }
    }

    public var termsPerYear: Swift.Double? {
        get { self[first: "termsPerYear"] }
        set { self[first: "termsPerYear"] = newValue }
    }

    public var timeOfDay: Swift.String? {
        get { self[first: "timeOfDay"] }
        set { self[first: "timeOfDay"] = newValue }
    }

    public var timeToComplete: ISO_8601.Duration? {
        get { self[first: "timeToComplete"] }
        set { self[first: "timeToComplete"] = newValue }
    }

    public var typicalCreditsPerTerm: SchemaOrg.Range.TypicalCreditsPerTerm? {
        get { self[first: "typicalCreditsPerTerm"] }
        set { self[first: "typicalCreditsPerTerm"] = newValue }
    }
}
