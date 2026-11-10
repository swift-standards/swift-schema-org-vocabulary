extension SchemaOrg.AnatomicalSystem {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.AssociatedPathophysiology,
        SchemaOrg.Domain.RelatedCondition,
        SchemaOrg.Domain.RelatedTherapy
    {}
}

extension SchemaOrg.AnatomicalSystem.`Protocol` {

    public var comprisedOf: SchemaOrg.Range.ComprisedOf? {
        get { self[first: "comprisedOf"] }
        set { self[first: "comprisedOf"] = newValue }
    }

    public var relatedStructure: SchemaOrg.AnatomicalStructure? {
        get { self[first: "relatedStructure"] }
        set { self[first: "relatedStructure"] = newValue }
    }
}
