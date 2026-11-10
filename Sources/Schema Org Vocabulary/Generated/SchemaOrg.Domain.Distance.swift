extension SchemaOrg.Domain {

    public protocol Distance: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Distance {

    public var distance: Swift.String? {
        get { self[first: "distance"] }
        set { self[first: "distance"] = newValue }
    }
}
