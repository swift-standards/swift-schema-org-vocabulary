extension SchemaOrg.GeoCircle {

    public protocol `Protocol`: SchemaOrg.GeoShape.`Protocol` {}
}

extension SchemaOrg.GeoCircle.`Protocol` {

    public var geoMidpoint: SchemaOrg.GeoCoordinates? {
        get { self[first: "geoMidpoint"] }
        set { self[first: "geoMidpoint"] = newValue }
    }

    public var geoRadius: SchemaOrg.Range.GeoRadius? {
        get { self[first: "geoRadius"] }
        set { self[first: "geoRadius"] = newValue }
    }
}
