extension SchemaOrg.Domain {

    public protocol AssociatedMedia: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AssociatedMedia {

    public var associatedMedia: SchemaOrg.MediaObject? {
        get { self[first: "associatedMedia"] }
        set { self[first: "associatedMedia"] = newValue }
    }
}
