extension SchemaOrg.Domain {

    public protocol NumberOfBedrooms: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.NumberOfBedrooms {

    public var numberOfBedrooms: SchemaOrg.Range.NumberOfBedrooms? {
        get { self[first: "numberOfBedrooms"] }
        set { self[first: "numberOfBedrooms"] = newValue }
    }
}
