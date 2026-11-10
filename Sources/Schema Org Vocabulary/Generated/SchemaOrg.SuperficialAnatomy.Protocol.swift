extension SchemaOrg.SuperficialAnatomy {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.AssociatedPathophysiology,
        SchemaOrg.Domain.RelatedCondition,
        SchemaOrg.Domain.RelatedTherapy
    {}
}

extension SchemaOrg.SuperficialAnatomy.`Protocol` {

    public var relatedAnatomy: SchemaOrg.Range.RelatedAnatomy? {
        get { self[first: "relatedAnatomy"] }
        set { self[first: "relatedAnatomy"] = newValue }
    }

    public var significance: Swift.String? {
        get { self[first: "significance"] }
        set { self[first: "significance"] = newValue }
    }
}
