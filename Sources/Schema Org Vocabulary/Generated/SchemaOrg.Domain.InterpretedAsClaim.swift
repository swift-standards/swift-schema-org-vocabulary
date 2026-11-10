extension SchemaOrg.Domain {

    public protocol InterpretedAsClaim: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.InterpretedAsClaim {

    public var interpretedAsClaim: SchemaOrg.Claim? {
        get { self[first: "interpretedAsClaim"] }
        set { self[first: "interpretedAsClaim"] = newValue }
    }
}
