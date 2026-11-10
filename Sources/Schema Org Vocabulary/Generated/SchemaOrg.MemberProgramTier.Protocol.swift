extension SchemaOrg.MemberProgramTier {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.MembershipPointsEarned
    {}
}

extension SchemaOrg.MemberProgramTier.`Protocol` {

    public var hasTierBenefit: SchemaOrg.TierBenefitEnumeration? {
        get { self[first: "hasTierBenefit"] }
        set { self[first: "hasTierBenefit"] = newValue }
    }

    public var hasTierRequirement: SchemaOrg.Range.HasTierRequirement? {
        get { self[first: "hasTierRequirement"] }
        set { self[first: "hasTierRequirement"] = newValue }
    }

    public var isTierOf: SchemaOrg.MemberProgram? {
        get { self[first: "isTierOf"] }
        set { self[first: "isTierOf"] = newValue }
    }
}
