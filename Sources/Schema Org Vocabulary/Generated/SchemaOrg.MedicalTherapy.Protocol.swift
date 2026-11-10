extension SchemaOrg.MedicalTherapy {

    public protocol `Protocol`:
        SchemaOrg.TherapeuticProcedure.`Protocol`,
        SchemaOrg.Domain.Contraindication,
        SchemaOrg.Domain.SeriousAdverseOutcome
    {}
}

extension SchemaOrg.MedicalTherapy.`Protocol` {

    public var duplicateTherapy: SchemaOrg.MedicalTherapy? {
        get { self[first: "duplicateTherapy"] }
        set { self[first: "duplicateTherapy"] = newValue }
    }
}
