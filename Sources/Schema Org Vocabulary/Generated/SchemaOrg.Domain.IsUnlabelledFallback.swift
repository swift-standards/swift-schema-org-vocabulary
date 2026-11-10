extension SchemaOrg.Domain {

    public protocol IsUnlabelledFallback: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.IsUnlabelledFallback {

    public var isUnlabelledFallback: Swift.Bool? {
        get { self[first: "isUnlabelledFallback"] }
        set { self[first: "isUnlabelledFallback"] = newValue }
    }
}
