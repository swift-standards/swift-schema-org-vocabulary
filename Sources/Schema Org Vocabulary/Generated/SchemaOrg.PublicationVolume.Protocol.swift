extension SchemaOrg.PublicationVolume {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.PageEnd,
        SchemaOrg.Domain.PageStart,
        SchemaOrg.Domain.Pagination
    {}
}

extension SchemaOrg.PublicationVolume.`Protocol` {

    public var volumeNumber: SchemaOrg.Range.VolumeNumber? {
        get { self[first: "volumeNumber"] }
        set { self[first: "volumeNumber"] = newValue }
    }
}
