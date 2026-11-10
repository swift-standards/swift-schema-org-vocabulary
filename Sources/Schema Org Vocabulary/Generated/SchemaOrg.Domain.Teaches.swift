extension SchemaOrg.Domain {

    public protocol Teaches: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Teaches {

    public var teaches: SchemaOrg.Range.Teaches? {
        get { self[first: "teaches"] }
        set { self[first: "teaches"] = newValue }
    }
}
