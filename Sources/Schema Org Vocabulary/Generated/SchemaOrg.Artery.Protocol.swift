extension SchemaOrg.Artery {

    public protocol `Protocol`: SchemaOrg.Vessel.`Protocol` {}
}

extension SchemaOrg.Artery.`Protocol` {

    public var arterialBranch: SchemaOrg.AnatomicalStructure? {
        get { self[first: "arterialBranch"] }
        set { self[first: "arterialBranch"] = newValue }
    }

    public var supplyTo: SchemaOrg.AnatomicalStructure? {
        get { self[first: "supplyTo"] }
        set { self[first: "supplyTo"] = newValue }
    }
}
