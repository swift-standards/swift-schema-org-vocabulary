extension SchemaOrg.MedicalClinic {

    public protocol `Protocol`:
        SchemaOrg.MedicalBusiness.`Protocol`,
        SchemaOrg.MedicalOrganization.`Protocol`,
        SchemaOrg.Domain.AvailableService,
        SchemaOrg.Domain.MedicalSpecialty
    {}
}
