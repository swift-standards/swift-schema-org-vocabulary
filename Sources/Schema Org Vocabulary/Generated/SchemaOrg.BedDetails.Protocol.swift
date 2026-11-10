extension SchemaOrg.BedDetails {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.BedDetails.`Protocol` {

    public var numberOfBeds: Swift.Double? {
        get { self[first: "numberOfBeds"] }
        set { self[first: "numberOfBeds"] = newValue }
    }

    public var typeOfBed: SchemaOrg.Range.TypeOfBed? {
        get { self[first: "typeOfBed"] }
        set { self[first: "typeOfBed"] = newValue }
    }
}
