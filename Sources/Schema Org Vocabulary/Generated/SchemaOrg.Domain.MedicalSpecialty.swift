extension SchemaOrg.Domain {

    public protocol MedicalSpecialty: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MedicalSpecialty {

    public var medicalSpecialty: SchemaOrg.MedicalSpecialty? {
        get { self[first: "medicalSpecialty"] }
        set { self[first: "medicalSpecialty"] = newValue }
    }
}
