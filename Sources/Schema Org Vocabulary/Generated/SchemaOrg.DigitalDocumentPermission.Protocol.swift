extension SchemaOrg.DigitalDocumentPermission {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.DigitalDocumentPermission.`Protocol` {

    public var grantee: SchemaOrg.Range.Grantee? {
        get { self[first: "grantee"] }
        set { self[first: "grantee"] = newValue }
    }

    public var permissionType: SchemaOrg.DigitalDocumentPermissionType? {
        get { self[first: "permissionType"] }
        set { self[first: "permissionType"] = newValue }
    }
}
