extension SchemaOrg.ArchiveComponent {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.ArchiveComponent.`Protocol` {

    public var holdingArchive: SchemaOrg.ArchiveOrganization? {
        get { self[first: "holdingArchive"] }
        set { self[first: "holdingArchive"] = newValue }
    }

    public var itemLocation: SchemaOrg.Range.ItemLocation? {
        get { self[first: "itemLocation"] }
        set { self[first: "itemLocation"] = newValue }
    }
}
