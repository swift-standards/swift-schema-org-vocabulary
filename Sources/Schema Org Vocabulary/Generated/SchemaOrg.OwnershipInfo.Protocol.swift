extension SchemaOrg.OwnershipInfo {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.TypeOfGood
    {}
}

extension SchemaOrg.OwnershipInfo.`Protocol` {

    public var acquiredFrom: SchemaOrg.Range.AcquiredFrom? {
        get { self[first: "acquiredFrom"] }
        set { self[first: "acquiredFrom"] = newValue }
    }

    public var ownedFrom: ISO_8601.DateTime? {
        get { self[first: "ownedFrom"] }
        set { self[first: "ownedFrom"] = newValue }
    }

    public var ownedThrough: ISO_8601.DateTime? {
        get { self[first: "ownedThrough"] }
        set { self[first: "ownedThrough"] = newValue }
    }
}
