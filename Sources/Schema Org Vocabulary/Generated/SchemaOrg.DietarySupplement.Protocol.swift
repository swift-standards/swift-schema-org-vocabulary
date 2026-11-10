extension SchemaOrg.DietarySupplement {

    public protocol `Protocol`:
        SchemaOrg.Product.`Protocol`,
        SchemaOrg.Substance.`Protocol`,
        SchemaOrg.Domain.ActiveIngredient,
        SchemaOrg.Domain.IsProprietary,
        SchemaOrg.Domain.LegalStatus,
        SchemaOrg.Domain.MaximumIntake,
        SchemaOrg.Domain.MechanismOfAction,
        SchemaOrg.Domain.NonProprietaryName,
        SchemaOrg.Domain.ProprietaryName,
        SchemaOrg.Domain.TargetPopulation
    {}
}

extension SchemaOrg.DietarySupplement.`Protocol` {

    public var recommendedIntake: SchemaOrg.RecommendedDoseSchedule? {
        get { self[first: "recommendedIntake"] }
        set { self[first: "recommendedIntake"] = newValue }
    }

    public var safetyConsideration: Swift.String? {
        get { self[first: "safetyConsideration"] }
        set { self[first: "safetyConsideration"] = newValue }
    }
}
