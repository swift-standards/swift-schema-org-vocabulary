extension SchemaOrg.Domain {

    public protocol Letterer: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.Letterer {

    public var letterer: SchemaOrg.Person? {
        get { self[first: "letterer"] }
        set { self[first: "letterer"] = newValue }
    }
}
