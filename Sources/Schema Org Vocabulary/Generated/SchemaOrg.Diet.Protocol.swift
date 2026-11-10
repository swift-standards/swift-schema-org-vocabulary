extension SchemaOrg.Diet {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.LifestyleModification.`Protocol`
    {}
}

extension SchemaOrg.Diet.`Protocol` {

    public var dietFeatures: Swift.String? {
        get { self[first: "dietFeatures"] }
        set { self[first: "dietFeatures"] = newValue }
    }

    public var endorsers: SchemaOrg.Range.Endorsers? {
        get { self[first: "endorsers"] }
        set { self[first: "endorsers"] = newValue }
    }

    public var expertConsiderations: Swift.String? {
        get { self[first: "expertConsiderations"] }
        set { self[first: "expertConsiderations"] = newValue }
    }

    public var physiologicalBenefits: Swift.String? {
        get { self[first: "physiologicalBenefits"] }
        set { self[first: "physiologicalBenefits"] = newValue }
    }

    public var risks: Swift.String? {
        get { self[first: "risks"] }
        set { self[first: "risks"] = newValue }
    }
}
