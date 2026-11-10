extension SchemaOrg.Domain {

    public protocol AdditionalProperty: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AdditionalProperty {

    public var additionalProperty: SchemaOrg.PropertyValue? {
        get { self[first: "additionalProperty"] }
        set { self[first: "additionalProperty"] = newValue }
    }
}
