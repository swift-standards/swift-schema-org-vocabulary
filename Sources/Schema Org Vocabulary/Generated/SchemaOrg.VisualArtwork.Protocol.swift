extension SchemaOrg.VisualArtwork {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Artist,
        SchemaOrg.Domain.Colorist,
        SchemaOrg.Domain.Depth,
        SchemaOrg.Domain.Height,
        SchemaOrg.Domain.Inker,
        SchemaOrg.Domain.Letterer,
        SchemaOrg.Domain.Penciler,
        SchemaOrg.Domain.Weight,
        SchemaOrg.Domain.Width
    {}
}

extension SchemaOrg.VisualArtwork.`Protocol` {

    public var artEdition: SchemaOrg.Range.ArtEdition? {
        get { self[first: "artEdition"] }
        set { self[first: "artEdition"] = newValue }
    }

    public var artMedium: SchemaOrg.Range.ArtMedium? {
        get { self[first: "artMedium"] }
        set { self[first: "artMedium"] = newValue }
    }

    public var artform: SchemaOrg.Range.Artform? {
        get { self[first: "artform"] }
        set { self[first: "artform"] = newValue }
    }

    public var artworkSurface: SchemaOrg.Range.ArtworkSurface? {
        get { self[first: "artworkSurface"] }
        set { self[first: "artworkSurface"] = newValue }
    }

    public var surface: SchemaOrg.Range.Surface? {
        get { self[first: "surface"] }
        set { self[first: "surface"] = newValue }
    }
}
