extension SchemaOrg.DigitalDocument {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.DigitalDocument.`Protocol` {

    public var hasDigitalDocumentPermission: SchemaOrg.DigitalDocumentPermission? {
        get { self[first: "hasDigitalDocumentPermission"] }
        set { self[first: "hasDigitalDocumentPermission"] = newValue }
    }
}
