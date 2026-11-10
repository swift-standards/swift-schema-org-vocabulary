extension SchemaOrg.MedicalCode {

    public protocol `Protocol`:
        SchemaOrg.CategoryCode.`Protocol`,
        SchemaOrg.MedicalIntangible.`Protocol`,
        SchemaOrg.Domain.CodeValue
    {}
}

extension SchemaOrg.MedicalCode.`Protocol` {

    public var codingSystem: Swift.String? {
        get { self[first: "codingSystem"] }
        set { self[first: "codingSystem"] = newValue }
    }
}
