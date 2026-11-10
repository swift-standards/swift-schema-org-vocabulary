extension SchemaOrg.DDxElement {

    public protocol `Protocol`:
        SchemaOrg.MedicalIntangible.`Protocol`,
        SchemaOrg.Domain.Diagnosis
    {}
}

extension SchemaOrg.DDxElement.`Protocol` {

    public var distinguishingSign: SchemaOrg.MedicalSignOrSymptom? {
        get { self[first: "distinguishingSign"] }
        set { self[first: "distinguishingSign"] = newValue }
    }
}
