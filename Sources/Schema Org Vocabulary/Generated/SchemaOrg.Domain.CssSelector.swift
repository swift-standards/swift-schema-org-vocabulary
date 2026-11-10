extension SchemaOrg.Domain {

    public protocol CssSelector: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CssSelector {

    public var cssSelector: Swift.String? {
        get { self[first: "cssSelector"] }
        set { self[first: "cssSelector"] = newValue }
    }
}
