extension SchemaOrg.Vein {

    public protocol `Protocol`:
        SchemaOrg.Vessel.`Protocol`,
        SchemaOrg.Domain.RegionDrained
    {}
}

extension SchemaOrg.Vein.`Protocol` {

    public var drainsTo: SchemaOrg.Vessel? {
        get { self[first: "drainsTo"] }
        set { self[first: "drainsTo"] = newValue }
    }

    public var tributary: SchemaOrg.AnatomicalStructure? {
        get { self[first: "tributary"] }
        set { self[first: "tributary"] = newValue }
    }
}
