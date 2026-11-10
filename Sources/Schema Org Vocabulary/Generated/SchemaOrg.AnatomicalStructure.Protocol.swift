extension SchemaOrg.AnatomicalStructure {

    public protocol `Protocol`:
        SchemaOrg.MedicalEntity.`Protocol`,
        SchemaOrg.Domain.AssociatedPathophysiology,
        SchemaOrg.Domain.BodyLocation,
        SchemaOrg.Domain.RelatedCondition,
        SchemaOrg.Domain.RelatedTherapy
    {}
}

extension SchemaOrg.AnatomicalStructure.`Protocol` {

    public var connectedTo: SchemaOrg.AnatomicalStructure? {
        get { self[first: "connectedTo"] }
        set { self[first: "connectedTo"] = newValue }
    }

    public var diagram: SchemaOrg.ImageObject? {
        get { self[first: "diagram"] }
        set { self[first: "diagram"] = newValue }
    }

    public var partOfSystem: SchemaOrg.AnatomicalSystem? {
        get { self[first: "partOfSystem"] }
        set { self[first: "partOfSystem"] = newValue }
    }

    public var subStructure: SchemaOrg.AnatomicalStructure? {
        get { self[first: "subStructure"] }
        set { self[first: "subStructure"] = newValue }
    }
}
