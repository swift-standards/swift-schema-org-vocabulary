extension SchemaOrg.MedicalCause {

    public protocol `Protocol`: SchemaOrg.MedicalEntity.`Protocol` {}
}

extension SchemaOrg.MedicalCause.`Protocol` {

    public var causeOf: SchemaOrg.MedicalEntity? {
        get { self[first: "causeOf"] }
        set { self[first: "causeOf"] = newValue }
    }
}
