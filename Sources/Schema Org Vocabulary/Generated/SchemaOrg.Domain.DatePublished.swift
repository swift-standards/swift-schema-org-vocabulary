extension SchemaOrg.Domain {

    public protocol DatePublished: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.DatePublished {

    public var datePublished: SchemaOrg.Range.DatePublished? {
        get { self[first: "datePublished"] }
        set { self[first: "datePublished"] = newValue }
    }
}
