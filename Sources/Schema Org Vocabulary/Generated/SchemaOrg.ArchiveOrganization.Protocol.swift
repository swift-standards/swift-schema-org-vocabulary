extension SchemaOrg.ArchiveOrganization {

    public protocol `Protocol`: SchemaOrg.LocalBusiness.`Protocol` {}
}

extension SchemaOrg.ArchiveOrganization.`Protocol` {

    public var archiveHeld: SchemaOrg.ArchiveComponent? {
        get { self[first: "archiveHeld"] }
        set { self[first: "archiveHeld"] = newValue }
    }
}
