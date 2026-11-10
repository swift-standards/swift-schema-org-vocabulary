extension SchemaOrg.JobPosting {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.BaseSalary,
        SchemaOrg.Domain.DatePosted,
        SchemaOrg.Domain.EducationRequirements,
        SchemaOrg.Domain.EstimatedSalary,
        SchemaOrg.Domain.ExperienceRequirements,
        SchemaOrg.Domain.OccupationalCategory,
        SchemaOrg.Domain.Qualifications,
        SchemaOrg.Domain.Responsibilities,
        SchemaOrg.Domain.SalaryCurrency,
        SchemaOrg.Domain.Skills,
        SchemaOrg.Domain.ValidThrough
    {}
}

extension SchemaOrg.JobPosting.`Protocol` {

    public var applicantLocationRequirements: SchemaOrg.AdministrativeArea? {
        get { self[first: "applicantLocationRequirements"] }
        set { self[first: "applicantLocationRequirements"] = newValue }
    }

    public var applicationContact: SchemaOrg.ContactPoint? {
        get { self[first: "applicationContact"] }
        set { self[first: "applicationContact"] = newValue }
    }

    public var benefits: Swift.String? {
        get { self[first: "benefits"] }
        set { self[first: "benefits"] = newValue }
    }

    public var directApply: Swift.Bool? {
        get { self[first: "directApply"] }
        set { self[first: "directApply"] = newValue }
    }

    public var eligibilityToWorkRequirement: Swift.String? {
        get { self[first: "eligibilityToWorkRequirement"] }
        set { self[first: "eligibilityToWorkRequirement"] = newValue }
    }

    public var employerOverview: Swift.String? {
        get { self[first: "employerOverview"] }
        set { self[first: "employerOverview"] = newValue }
    }

    public var employmentType: Swift.String? {
        get { self[first: "employmentType"] }
        set { self[first: "employmentType"] = newValue }
    }

    public var employmentUnit: SchemaOrg.Organization? {
        get { self[first: "employmentUnit"] }
        set { self[first: "employmentUnit"] = newValue }
    }

    public var experienceInPlaceOfEducation: Swift.Bool? {
        get { self[first: "experienceInPlaceOfEducation"] }
        set { self[first: "experienceInPlaceOfEducation"] = newValue }
    }

    public var hiringOrganization: SchemaOrg.Range.HiringOrganization? {
        get { self[first: "hiringOrganization"] }
        set { self[first: "hiringOrganization"] = newValue }
    }

    public var incentiveCompensation: Swift.String? {
        get { self[first: "incentiveCompensation"] }
        set { self[first: "incentiveCompensation"] = newValue }
    }

    public var incentives: Swift.String? {
        get { self[first: "incentives"] }
        set { self[first: "incentives"] = newValue }
    }

    public var industry: SchemaOrg.Range.Industry? {
        get { self[first: "industry"] }
        set { self[first: "industry"] = newValue }
    }

    public var jobBenefits: Swift.String? {
        get { self[first: "jobBenefits"] }
        set { self[first: "jobBenefits"] = newValue }
    }

    public var jobDuration: SchemaOrg.Range.JobDuration? {
        get { self[first: "jobDuration"] }
        set { self[first: "jobDuration"] = newValue }
    }

    public var jobImmediateStart: Swift.Bool? {
        get { self[first: "jobImmediateStart"] }
        set { self[first: "jobImmediateStart"] = newValue }
    }

    public var jobLocation: SchemaOrg.Place? {
        get { self[first: "jobLocation"] }
        set { self[first: "jobLocation"] = newValue }
    }

    public var jobLocationType: Swift.String? {
        get { self[first: "jobLocationType"] }
        set { self[first: "jobLocationType"] = newValue }
    }

    public var jobStartDate: SchemaOrg.Range.JobStartDate? {
        get { self[first: "jobStartDate"] }
        set { self[first: "jobStartDate"] = newValue }
    }

    public var physicalRequirement: SchemaOrg.Range.PhysicalRequirement? {
        get { self[first: "physicalRequirement"] }
        set { self[first: "physicalRequirement"] = newValue }
    }

    public var relevantOccupation: SchemaOrg.Occupation? {
        get { self[first: "relevantOccupation"] }
        set { self[first: "relevantOccupation"] = newValue }
    }

    public var securityClearanceRequirement: SchemaOrg.Range.SecurityClearanceRequirement? {
        get { self[first: "securityClearanceRequirement"] }
        set { self[first: "securityClearanceRequirement"] = newValue }
    }

    public var sensoryRequirement: SchemaOrg.Range.SensoryRequirement? {
        get { self[first: "sensoryRequirement"] }
        set { self[first: "sensoryRequirement"] = newValue }
    }

    public var specialCommitments: Swift.String? {
        get { self[first: "specialCommitments"] }
        set { self[first: "specialCommitments"] = newValue }
    }

    public var title: Swift.String? {
        get { self[first: "title"] }
        set { self[first: "title"] = newValue }
    }

    public var totalJobOpenings: Swift.Int? {
        get { self[first: "totalJobOpenings"] }
        set { self[first: "totalJobOpenings"] = newValue }
    }

    public var workHours: Swift.String? {
        get { self[first: "workHours"] }
        set { self[first: "workHours"] = newValue }
    }
}
