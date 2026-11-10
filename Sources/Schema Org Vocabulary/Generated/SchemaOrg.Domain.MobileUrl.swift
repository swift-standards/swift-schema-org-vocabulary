extension SchemaOrg.Domain {

    public protocol MobileUrl: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MobileUrl {

    public var mobileUrl: Swift.String? {
        get { self[first: "mobileUrl"] }
        set { self[first: "mobileUrl"] = newValue }
    }
}
