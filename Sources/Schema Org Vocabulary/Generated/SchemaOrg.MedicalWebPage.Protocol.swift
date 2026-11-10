extension SchemaOrg.MedicalWebPage {

    public protocol `Protocol`: SchemaOrg.WebPage.`Protocol` {}
}

extension SchemaOrg.MedicalWebPage.`Protocol` {

    public var aspect: Swift.String? {
        get { self[first: "aspect"] }
        set { self[first: "aspect"] = newValue }
    }

    public var medicalAudience: SchemaOrg.Range.MedicalAudience? {
        get { self[first: "medicalAudience"] }
        set { self[first: "medicalAudience"] = newValue }
    }
}
