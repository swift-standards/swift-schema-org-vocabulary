extension SchemaOrg.ComicIssue {

    public protocol `Protocol`:
        SchemaOrg.PublicationIssue.`Protocol`,
        SchemaOrg.Domain.Artist,
        SchemaOrg.Domain.Colorist,
        SchemaOrg.Domain.Inker,
        SchemaOrg.Domain.Letterer,
        SchemaOrg.Domain.Penciler
    {}
}

extension SchemaOrg.ComicIssue.`Protocol` {

    public var variantCover: Swift.String? {
        get { self[first: "variantCover"] }
        set { self[first: "variantCover"] = newValue }
    }
}
