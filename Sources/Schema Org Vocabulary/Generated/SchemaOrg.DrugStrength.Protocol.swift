extension SchemaOrg.DrugStrength {

    public protocol `Protocol`:
        SchemaOrg.MedicalIntangible.`Protocol`,
        SchemaOrg.Domain.ActiveIngredient,
        SchemaOrg.Domain.MaximumIntake
    {}
}

extension SchemaOrg.DrugStrength.`Protocol` {

    public var availableIn: SchemaOrg.AdministrativeArea? {
        get { self[first: "availableIn"] }
        set { self[first: "availableIn"] = newValue }
    }

    public var strengthUnit: Swift.String? {
        get { self[first: "strengthUnit"] }
        set { self[first: "strengthUnit"] = newValue }
    }

    public var strengthValue: Swift.Double? {
        get { self[first: "strengthValue"] }
        set { self[first: "strengthValue"] = newValue }
    }
}
