extension SchemaOrg.`3DModel` {

    public protocol `Protocol`: SchemaOrg.MediaObject.`Protocol` {}
}

extension SchemaOrg.`3DModel`.`Protocol` {

    public var isResizable: Swift.Bool? {
        get { self[first: "isResizable"] }
        set { self[first: "isResizable"] = newValue }
    }
}
