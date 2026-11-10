extension SchemaOrg.Hospital {

    public protocol `Protocol`:
        SchemaOrg.CivicStructure.`Protocol`,
        SchemaOrg.EmergencyService.`Protocol`,
        SchemaOrg.MedicalOrganization.`Protocol`,
        SchemaOrg.Domain.AvailableService,
        SchemaOrg.Domain.MedicalSpecialty
    {}
}

extension SchemaOrg.Hospital.`Protocol` {

    public var healthcareReportingData: SchemaOrg.Range.HealthcareReportingData? {
        get { self[first: "healthcareReportingData"] }
        set { self[first: "healthcareReportingData"] = newValue }
    }
}
