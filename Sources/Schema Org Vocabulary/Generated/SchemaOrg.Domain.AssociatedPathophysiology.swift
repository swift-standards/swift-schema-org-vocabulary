extension SchemaOrg.Domain {

    public protocol AssociatedPathophysiology: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AssociatedPathophysiology {

    public var associatedPathophysiology: Swift.String? {
        get { self[first: "associatedPathophysiology"] }
        set { self[first: "associatedPathophysiology"] = newValue }
    }
}
