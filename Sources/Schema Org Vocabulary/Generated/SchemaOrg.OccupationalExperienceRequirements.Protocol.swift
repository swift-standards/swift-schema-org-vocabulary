extension SchemaOrg.OccupationalExperienceRequirements {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.OccupationalExperienceRequirements.`Protocol` {

    public var monthsOfExperience: Swift.Double? {
        get { self[first: "monthsOfExperience"] }
        set { self[first: "monthsOfExperience"] = newValue }
    }
}
