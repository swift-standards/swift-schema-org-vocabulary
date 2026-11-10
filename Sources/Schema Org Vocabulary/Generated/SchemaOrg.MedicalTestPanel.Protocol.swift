extension SchemaOrg.MedicalTestPanel {

    public protocol `Protocol`: SchemaOrg.MedicalTest.`Protocol` {}
}

extension SchemaOrg.MedicalTestPanel.`Protocol` {

    public var subTest: SchemaOrg.MedicalTest? {
        get { self[first: "subTest"] }
        set { self[first: "subTest"] = newValue }
    }
}
