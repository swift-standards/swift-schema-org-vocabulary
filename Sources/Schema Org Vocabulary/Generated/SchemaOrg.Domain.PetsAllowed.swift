extension SchemaOrg.Domain {

    public protocol PetsAllowed: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.PetsAllowed {

    public var petsAllowed: SchemaOrg.Range.PetsAllowed? {
        get { self[first: "petsAllowed"] }
        set { self[first: "petsAllowed"] = newValue }
    }
}
