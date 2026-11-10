extension SchemaOrg.Domain {

    public protocol AddressRegion: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AddressRegion {

    public var addressRegion: SchemaOrg.Range.AddressRegion? {
        get { self[first: "addressRegion"] }
        set { self[first: "addressRegion"] = newValue }
    }
}
