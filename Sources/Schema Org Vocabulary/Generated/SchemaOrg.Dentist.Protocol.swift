extension SchemaOrg.Dentist {

    public protocol `Protocol`:
        SchemaOrg.LocalBusiness.`Protocol`,
        SchemaOrg.MedicalBusiness.`Protocol`,
        SchemaOrg.MedicalOrganization.`Protocol`
    {}
}
