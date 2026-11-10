extension SchemaOrg.Physician {

    public protocol `Protocol`:
        SchemaOrg.MedicalBusiness.`Protocol`,
        SchemaOrg.MedicalOrganization.`Protocol`,
        SchemaOrg.Domain.AvailableService,
        SchemaOrg.Domain.MedicalSpecialty,
        SchemaOrg.Domain.OccupationalCategory
    {}
}

extension SchemaOrg.Physician.`Protocol` {

    public var hospitalAffiliation: SchemaOrg.Hospital? {
        get { self[first: "hospitalAffiliation"] }
        set { self[first: "hospitalAffiliation"] = newValue }
    }

    public var usNPI: Swift.String? {
        get { self[first: "usNPI"] }
        set { self[first: "usNPI"] = newValue }
    }
}
