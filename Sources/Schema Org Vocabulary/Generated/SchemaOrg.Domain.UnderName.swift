extension SchemaOrg.Domain {

    public protocol UnderName: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.UnderName {

    public var underName: SchemaOrg.Range.UnderName? {
        get { self[first: "underName"] }
        set { self[first: "underName"] = newValue }
    }
}
