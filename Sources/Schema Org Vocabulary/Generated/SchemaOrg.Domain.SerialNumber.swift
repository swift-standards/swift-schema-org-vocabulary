extension SchemaOrg.Domain {

    public protocol SerialNumber: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SerialNumber {

    public var serialNumber: Swift.String? {
        get { self[first: "serialNumber"] }
        set { self[first: "serialNumber"] = newValue }
    }
}
