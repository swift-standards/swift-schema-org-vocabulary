extension SchemaOrg.MedicalStudy {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.HealthCondition,
        SchemaOrg.Domain.Sponsor,
        SchemaOrg.Domain.Status
    {}
}

extension SchemaOrg.MedicalStudy.`Protocol` {

    public var studyLocation: SchemaOrg.AdministrativeArea? {
        get { self[first: "studyLocation"] }
        set { self[first: "studyLocation"] = newValue }
    }

    public var studySubject: SchemaOrg.MedicalEntity? {
        get { self[first: "studySubject"] }
        set { self[first: "studySubject"] = newValue }
    }
}
