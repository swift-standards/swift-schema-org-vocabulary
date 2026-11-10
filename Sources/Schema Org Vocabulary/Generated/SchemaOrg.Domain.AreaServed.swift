extension SchemaOrg.Domain {

    public protocol AreaServed: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AreaServed {

    public var areaServed: SchemaOrg.Range.AreaServed? {
        get { self[first: "areaServed"] }
        set { self[first: "areaServed"] = newValue }
    }
}
