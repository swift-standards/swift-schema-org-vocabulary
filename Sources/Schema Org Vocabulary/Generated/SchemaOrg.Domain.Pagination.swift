extension SchemaOrg.Domain {

    public protocol Pagination: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Pagination {

    public var pagination: Swift.String? {
        get { self[first: "pagination"] }
        set { self[first: "pagination"] = newValue }
    }
}
