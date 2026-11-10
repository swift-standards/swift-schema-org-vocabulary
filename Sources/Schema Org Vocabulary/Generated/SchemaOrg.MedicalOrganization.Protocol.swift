extension SchemaOrg.MedicalOrganization {

    public protocol `Protocol`:
        SchemaOrg.Organization.`Protocol`,
        SchemaOrg.Domain.HealthPlanNetworkId,
        SchemaOrg.Domain.MedicalSpecialty
    {}
}

extension SchemaOrg.MedicalOrganization.`Protocol` {

    public var isAcceptingNewPatients: Swift.Bool? {
        get { self[first: "isAcceptingNewPatients"] }
        set { self[first: "isAcceptingNewPatients"] = newValue }
    }
}
