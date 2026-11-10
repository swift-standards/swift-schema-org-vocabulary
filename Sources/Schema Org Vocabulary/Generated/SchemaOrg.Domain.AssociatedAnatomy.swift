extension SchemaOrg.Domain {

    public protocol AssociatedAnatomy: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AssociatedAnatomy {

    public var associatedAnatomy: SchemaOrg.Range.AssociatedAnatomy? {
        get { self[first: "associatedAnatomy"] }
        set { self[first: "associatedAnatomy"] = newValue }
    }
}
