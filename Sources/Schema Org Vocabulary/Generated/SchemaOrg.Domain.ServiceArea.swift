extension SchemaOrg.Domain {

    public protocol ServiceArea: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ServiceArea {

    public var serviceArea: SchemaOrg.Range.ServiceArea? {
        get { self[first: "serviceArea"] }
        set { self[first: "serviceArea"] = newValue }
    }
}
