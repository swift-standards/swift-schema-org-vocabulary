extension SchemaOrg.DiagnosticLab {

    public protocol `Protocol`: SchemaOrg.MedicalOrganization.`Protocol` {}
}

extension SchemaOrg.DiagnosticLab.`Protocol` {

    public var availableTest: SchemaOrg.MedicalTest? {
        get { self[first: "availableTest"] }
        set { self[first: "availableTest"] = newValue }
    }
}
