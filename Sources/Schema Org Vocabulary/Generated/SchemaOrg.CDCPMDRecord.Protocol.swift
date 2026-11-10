extension SchemaOrg.CDCPMDRecord {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.DatePosted
    {}
}

extension SchemaOrg.CDCPMDRecord.`Protocol` {

    public var cvdCollectionDate: SchemaOrg.Range.CvdCollectionDate? {
        get { self[first: "cvdCollectionDate"] }
        set { self[first: "cvdCollectionDate"] = newValue }
    }

    public var cvdFacilityCounty: Swift.String? {
        get { self[first: "cvdFacilityCounty"] }
        set { self[first: "cvdFacilityCounty"] = newValue }
    }

    public var cvdFacilityId: Swift.String? {
        get { self[first: "cvdFacilityId"] }
        set { self[first: "cvdFacilityId"] = newValue }
    }

    public var cvdNumBeds: Swift.Double? {
        get { self[first: "cvdNumBeds"] }
        set { self[first: "cvdNumBeds"] = newValue }
    }

    public var cvdNumBedsOcc: Swift.Double? {
        get { self[first: "cvdNumBedsOcc"] }
        set { self[first: "cvdNumBedsOcc"] = newValue }
    }

    public var cvdNumC19Died: Swift.Double? {
        get { self[first: "cvdNumC19Died"] }
        set { self[first: "cvdNumC19Died"] = newValue }
    }

    public var cvdNumC19HOPats: Swift.Double? {
        get { self[first: "cvdNumC19HOPats"] }
        set { self[first: "cvdNumC19HOPats"] = newValue }
    }

    public var cvdNumC19HospPats: Swift.Double? {
        get { self[first: "cvdNumC19HospPats"] }
        set { self[first: "cvdNumC19HospPats"] = newValue }
    }

    public var cvdNumC19MechVentPats: Swift.Double? {
        get { self[first: "cvdNumC19MechVentPats"] }
        set { self[first: "cvdNumC19MechVentPats"] = newValue }
    }

    public var cvdNumC19OFMechVentPats: Swift.Double? {
        get { self[first: "cvdNumC19OFMechVentPats"] }
        set { self[first: "cvdNumC19OFMechVentPats"] = newValue }
    }

    public var cvdNumC19OverflowPats: Swift.Double? {
        get { self[first: "cvdNumC19OverflowPats"] }
        set { self[first: "cvdNumC19OverflowPats"] = newValue }
    }

    public var cvdNumICUBeds: Swift.Double? {
        get { self[first: "cvdNumICUBeds"] }
        set { self[first: "cvdNumICUBeds"] = newValue }
    }

    public var cvdNumICUBedsOcc: Swift.Double? {
        get { self[first: "cvdNumICUBedsOcc"] }
        set { self[first: "cvdNumICUBedsOcc"] = newValue }
    }

    public var cvdNumTotBeds: Swift.Double? {
        get { self[first: "cvdNumTotBeds"] }
        set { self[first: "cvdNumTotBeds"] = newValue }
    }

    public var cvdNumVent: Swift.Double? {
        get { self[first: "cvdNumVent"] }
        set { self[first: "cvdNumVent"] = newValue }
    }

    public var cvdNumVentUse: Swift.Double? {
        get { self[first: "cvdNumVentUse"] }
        set { self[first: "cvdNumVentUse"] = newValue }
    }
}
