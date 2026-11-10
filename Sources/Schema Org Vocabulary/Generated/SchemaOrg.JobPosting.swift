extension SchemaOrg {

    public struct JobPosting: SchemaOrg.JobPosting.`Protocol`, Swift.Hashable {

        public static let type = "JobPosting"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.JobPosting {

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
        applicantLocationRequirements: SchemaOrg.AdministrativeArea? = nil,
        applicationContact: SchemaOrg.ContactPoint? = nil,
        baseSalary: SchemaOrg.Range.BaseSalary? = nil,
        benefits: Swift.String? = nil,
        datePosted: SchemaOrg.Range.DatePosted? = nil,
        directApply: Swift.Bool? = nil,
        educationRequirements: SchemaOrg.Range.EducationRequirements? = nil,
        eligibilityToWorkRequirement: Swift.String? = nil,
        employerOverview: Swift.String? = nil,
        employmentType: Swift.String? = nil,
        employmentUnit: SchemaOrg.Organization? = nil,
        estimatedSalary: SchemaOrg.Range.EstimatedSalary? = nil,
        experienceInPlaceOfEducation: Swift.Bool? = nil,
        experienceRequirements: SchemaOrg.Range.ExperienceRequirements? = nil,
        hiringOrganization: SchemaOrg.Range.HiringOrganization? = nil,
        incentiveCompensation: Swift.String? = nil,
        incentives: Swift.String? = nil,
        industry: SchemaOrg.Range.Industry? = nil,
        jobBenefits: Swift.String? = nil,
        jobDuration: SchemaOrg.Range.JobDuration? = nil,
        jobImmediateStart: Swift.Bool? = nil,
        jobLocation: SchemaOrg.Place? = nil,
        jobLocationType: Swift.String? = nil,
        jobStartDate: SchemaOrg.Range.JobStartDate? = nil,
        occupationalCategory: SchemaOrg.Range.OccupationalCategory? = nil,
        physicalRequirement: SchemaOrg.Range.PhysicalRequirement? = nil,
        qualifications: SchemaOrg.Range.Qualifications? = nil,
        relevantOccupation: SchemaOrg.Occupation? = nil,
        responsibilities: Swift.String? = nil,
        salaryCurrency: Swift.String? = nil,
        securityClearanceRequirement: SchemaOrg.Range.SecurityClearanceRequirement? = nil,
        sensoryRequirement: SchemaOrg.Range.SensoryRequirement? = nil,
        skills: SchemaOrg.Range.Skills? = nil,
        specialCommitments: Swift.String? = nil,
        title: Swift.String? = nil,
        totalJobOpenings: Swift.Int? = nil,
        validThrough: SchemaOrg.Range.ValidThrough? = nil,
        workHours: Swift.String? = nil
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
        self.applicantLocationRequirements = applicantLocationRequirements
        self.applicationContact = applicationContact
        self.baseSalary = baseSalary
        self.benefits = benefits
        self.datePosted = datePosted
        self.directApply = directApply
        self.educationRequirements = educationRequirements
        self.eligibilityToWorkRequirement = eligibilityToWorkRequirement
        self.employerOverview = employerOverview
        self.employmentType = employmentType
        self.employmentUnit = employmentUnit
        self.estimatedSalary = estimatedSalary
        self.experienceInPlaceOfEducation = experienceInPlaceOfEducation
        self.experienceRequirements = experienceRequirements
        self.hiringOrganization = hiringOrganization
        self.incentiveCompensation = incentiveCompensation
        self.incentives = incentives
        self.industry = industry
        self.jobBenefits = jobBenefits
        self.jobDuration = jobDuration
        self.jobImmediateStart = jobImmediateStart
        self.jobLocation = jobLocation
        self.jobLocationType = jobLocationType
        self.jobStartDate = jobStartDate
        self.occupationalCategory = occupationalCategory
        self.physicalRequirement = physicalRequirement
        self.qualifications = qualifications
        self.relevantOccupation = relevantOccupation
        self.responsibilities = responsibilities
        self.salaryCurrency = salaryCurrency
        self.securityClearanceRequirement = securityClearanceRequirement
        self.sensoryRequirement = sensoryRequirement
        self.skills = skills
        self.specialCommitments = specialCommitments
        self.title = title
        self.totalJobOpenings = totalJobOpenings
        self.validThrough = validThrough
        self.workHours = workHours
    }
}
