extension SchemaOrg.MedicalDevice {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.AdverseOutcome,
        SchemaOrg.Domain.Contraindication,
        SchemaOrg.Domain.SeriousAdverseOutcome
    {}
}

extension SchemaOrg.MedicalDevice.`Protocol` {

    public var postOp: Swift.String? {
        get { self[first: "postOp"] }
        set { self[first: "postOp"] = newValue }
    }

    public var preOp: Swift.String? {
        get { self[first: "preOp"] }
        set { self[first: "preOp"] = newValue }
    }

    public var procedure: Swift.String? {
        get { self[first: "procedure"] }
        set { self[first: "procedure"] = newValue }
    }
}
