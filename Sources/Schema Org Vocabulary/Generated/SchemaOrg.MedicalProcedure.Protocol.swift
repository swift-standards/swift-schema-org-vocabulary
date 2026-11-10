extension SchemaOrg.MedicalProcedure {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.BodyLocation,
        SchemaOrg.Domain.Status
    {}
}

extension SchemaOrg.MedicalProcedure.`Protocol` {

    public var followup: Swift.String? {
        get { self[first: "followup"] }
        set { self[first: "followup"] = newValue }
    }

    public var howPerformed: Swift.String? {
        get { self[first: "howPerformed"] }
        set { self[first: "howPerformed"] = newValue }
    }

    public var preparation: SchemaOrg.Range.Preparation? {
        get { self[first: "preparation"] }
        set { self[first: "preparation"] = newValue }
    }

    public var procedureType: SchemaOrg.MedicalProcedureType? {
        get { self[first: "procedureType"] }
        set { self[first: "procedureType"] = newValue }
    }
}
