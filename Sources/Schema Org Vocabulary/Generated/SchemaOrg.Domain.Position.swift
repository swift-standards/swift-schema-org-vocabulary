extension SchemaOrg.Domain {

    public protocol Position: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Position {

    public var position: SchemaOrg.Range.Position? {
        get { self[first: "position"] }
        set { self[first: "position"] = newValue }
    }
}
