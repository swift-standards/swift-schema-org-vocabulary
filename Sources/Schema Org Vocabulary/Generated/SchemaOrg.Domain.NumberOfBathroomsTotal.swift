extension SchemaOrg.Domain {

    public protocol NumberOfBathroomsTotal: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfBathroomsTotal {

    public var numberOfBathroomsTotal: Swift.Int? {
        get { self[first: "numberOfBathroomsTotal"] }
        set { self[first: "numberOfBathroomsTotal"] = newValue }
    }
}
