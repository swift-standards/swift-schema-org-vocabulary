extension SchemaOrg.Domain {

    public protocol ExperienceRequirements: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ExperienceRequirements {

    public var experienceRequirements: SchemaOrg.Range.ExperienceRequirements? {
        get { self[first: "experienceRequirements"] }
        set { self[first: "experienceRequirements"] = newValue }
    }
}
