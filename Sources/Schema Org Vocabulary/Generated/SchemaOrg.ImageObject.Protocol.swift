extension SchemaOrg.ImageObject {

    public protocol `Protocol`:
        SchemaOrg.MediaObject.`Protocol`,
        SchemaOrg.Domain.Caption,
        SchemaOrg.Domain.EmbeddedTextCaption
    {}
}

extension SchemaOrg.ImageObject.`Protocol` {

    public var exifData: SchemaOrg.Range.ExifData? {
        get { self[first: "exifData"] }
        set { self[first: "exifData"] = newValue }
    }

    public var representativeOfPage: Swift.Bool? {
        get { self[first: "representativeOfPage"] }
        set { self[first: "representativeOfPage"] = newValue }
    }
}
