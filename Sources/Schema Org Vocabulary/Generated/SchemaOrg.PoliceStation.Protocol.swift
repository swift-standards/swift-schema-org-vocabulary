extension SchemaOrg.PoliceStation {

    public protocol `Protocol`:
        SchemaOrg.CivicStructure.`Protocol`,
        SchemaOrg.EmergencyService.`Protocol`
    {}
}
