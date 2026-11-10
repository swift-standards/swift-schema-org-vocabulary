extension SchemaOrg.Occupation {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.EducationRequirements,
        SchemaOrg.Domain.EstimatedSalary,
        SchemaOrg.Domain.ExperienceRequirements,
        SchemaOrg.Domain.OccupationalCategory,
        SchemaOrg.Domain.Qualifications,
        SchemaOrg.Domain.Responsibilities,
        SchemaOrg.Domain.Skills
    {}
}

extension SchemaOrg.Occupation.`Protocol` {

    public var occupationLocation: SchemaOrg.AdministrativeArea? {
        get { self[first: "occupationLocation"] }
        set { self[first: "occupationLocation"] = newValue }
    }
}
