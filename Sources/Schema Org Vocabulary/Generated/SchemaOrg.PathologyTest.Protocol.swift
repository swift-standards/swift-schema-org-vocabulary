extension SchemaOrg.PathologyTest {

    public protocol `Protocol`: SchemaOrg.MedicalTest.`Protocol` {}
}

extension SchemaOrg.PathologyTest.`Protocol` {

    public var tissueSample: Swift.String? {
        get { self[first: "tissueSample"] }
        set { self[first: "tissueSample"] = newValue }
    }
}
