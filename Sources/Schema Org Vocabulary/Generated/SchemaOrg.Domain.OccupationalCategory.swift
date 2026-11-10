extension SchemaOrg.Domain {

    public protocol OccupationalCategory: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.OccupationalCategory {

    public var occupationalCategory: SchemaOrg.Range.OccupationalCategory? {
        get { self[first: "occupationalCategory"] }
        set { self[first: "occupationalCategory"] = newValue }
    }
}
