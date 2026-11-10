extension SchemaOrg.MedicalEntity {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.Funding,
        SchemaOrg.Domain.LegalStatus
    {}
}

extension SchemaOrg.MedicalEntity.`Protocol` {

    public var code: SchemaOrg.MedicalCode? {
        get { self[first: "code"] }
        set { self[first: "code"] = newValue }
    }

    public var guideline: SchemaOrg.MedicalGuideline? {
        get { self[first: "guideline"] }
        set { self[first: "guideline"] = newValue }
    }

    public var medicineSystem: SchemaOrg.MedicineSystem? {
        get { self[first: "medicineSystem"] }
        set { self[first: "medicineSystem"] = newValue }
    }

    public var recognizingAuthority: SchemaOrg.Organization? {
        get { self[first: "recognizingAuthority"] }
        set { self[first: "recognizingAuthority"] = newValue }
    }

    public var relevantSpecialty: SchemaOrg.MedicalSpecialty? {
        get { self[first: "relevantSpecialty"] }
        set { self[first: "relevantSpecialty"] = newValue }
    }

    public var study: SchemaOrg.MedicalStudy? {
        get { self[first: "study"] }
        set { self[first: "study"] = newValue }
    }
}
