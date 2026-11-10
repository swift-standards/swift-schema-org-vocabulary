extension SchemaOrg.MedicalObservationalStudy {

    public protocol `Protocol`: SchemaOrg.MedicalStudy.`Protocol` {}
}

extension SchemaOrg.MedicalObservationalStudy.`Protocol` {

    public var studyDesign: SchemaOrg.MedicalObservationalStudyDesign? {
        get { self[first: "studyDesign"] }
        set { self[first: "studyDesign"] = newValue }
    }
}
