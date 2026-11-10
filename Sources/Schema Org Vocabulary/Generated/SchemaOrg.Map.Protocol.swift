extension SchemaOrg.Map {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.Map.`Protocol` {

    public var mapType: SchemaOrg.MapCategoryType? {
        get { self[first: "mapType"] }
        set { self[first: "mapType"] = newValue }
    }
}
