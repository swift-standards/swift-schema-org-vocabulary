extension SchemaOrg {

    public struct Occupation: SchemaOrg.Occupation.`Protocol`, Swift.Hashable {

        public static let type = "Occupation"

        public var node: W3C_JSON_LD.Node

        public init(node: W3C_JSON_LD.Node) {
            self.node = node
        }
    }
}

extension SchemaOrg.Occupation {

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
        educationRequirements: SchemaOrg.Range.EducationRequirements? = nil,
        estimatedSalary: SchemaOrg.Range.EstimatedSalary? = nil,
        experienceRequirements: SchemaOrg.Range.ExperienceRequirements? = nil,
        occupationLocation: SchemaOrg.AdministrativeArea? = nil,
        occupationalCategory: SchemaOrg.Range.OccupationalCategory? = nil,
        qualifications: SchemaOrg.Range.Qualifications? = nil,
        responsibilities: Swift.String? = nil,
        skills: SchemaOrg.Range.Skills? = nil
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
        self.educationRequirements = educationRequirements
        self.estimatedSalary = estimatedSalary
        self.experienceRequirements = experienceRequirements
        self.occupationLocation = occupationLocation
        self.occupationalCategory = occupationalCategory
        self.qualifications = qualifications
        self.responsibilities = responsibilities
        self.skills = skills
    }
}
