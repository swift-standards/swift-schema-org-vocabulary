extension SchemaOrg.IndividualPhysician {

    public protocol `Protocol`: SchemaOrg.Physician.`Protocol` {}
}

extension SchemaOrg.IndividualPhysician.`Protocol` {

    public var practicesAt: SchemaOrg.MedicalOrganization? {
        get { self[first: "practicesAt"] }
        set { self[first: "practicesAt"] = newValue }
    }
}
