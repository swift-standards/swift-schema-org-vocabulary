extension SchemaOrg.ImagingTest {

    public protocol `Protocol`: SchemaOrg.MedicalTest.`Protocol` {}
}

extension SchemaOrg.ImagingTest.`Protocol` {

    public var imagingTechnique: SchemaOrg.MedicalImagingTechnique? {
        get { self[first: "imagingTechnique"] }
        set { self[first: "imagingTechnique"] = newValue }
    }
}
