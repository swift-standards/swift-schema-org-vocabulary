extension SchemaOrg.Claim {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.Claim.`Protocol` {

    public var appearance: SchemaOrg.CreativeWork? {
        get { self[first: "appearance"] }
        set { self[first: "appearance"] = newValue }
    }

    public var claimInterpreter: SchemaOrg.Range.ClaimInterpreter? {
        get { self[first: "claimInterpreter"] }
        set { self[first: "claimInterpreter"] = newValue }
    }

    public var firstAppearance: SchemaOrg.CreativeWork? {
        get { self[first: "firstAppearance"] }
        set { self[first: "firstAppearance"] = newValue }
    }
}
