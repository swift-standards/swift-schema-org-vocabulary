extension SchemaOrg.Domain {

    public protocol TitleEIDR: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TitleEIDR {

    public var titleEIDR: SchemaOrg.Range.TitleEIDR? {
        get { self[first: "titleEIDR"] }
        set { self[first: "titleEIDR"] = newValue }
    }
}
