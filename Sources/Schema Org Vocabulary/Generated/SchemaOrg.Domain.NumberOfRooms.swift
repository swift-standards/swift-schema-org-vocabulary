extension SchemaOrg.Domain {

    public protocol NumberOfRooms: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfRooms {

    public var numberOfRooms: SchemaOrg.Range.NumberOfRooms? {
        get { self[first: "numberOfRooms"] }
        set { self[first: "numberOfRooms"] = newValue }
    }
}
