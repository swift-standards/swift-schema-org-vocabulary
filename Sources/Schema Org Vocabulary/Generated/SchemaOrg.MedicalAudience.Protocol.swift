extension SchemaOrg.MedicalAudience {

    public protocol `Protocol`:
        SchemaOrg.Audience.`Protocol`,
        SchemaOrg.PeopleAudience.`Protocol`
    {}
}
