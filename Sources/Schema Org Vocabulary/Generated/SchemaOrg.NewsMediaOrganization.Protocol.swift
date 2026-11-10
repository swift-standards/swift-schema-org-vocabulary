extension SchemaOrg.NewsMediaOrganization {

    public protocol `Protocol`:
        SchemaOrg.Organization.`Protocol`,
        SchemaOrg.Domain.ActionableFeedbackPolicy,
        SchemaOrg.Domain.CorrectionsPolicy,
        SchemaOrg.Domain.DiversityPolicy,
        SchemaOrg.Domain.DiversityStaffingReport,
        SchemaOrg.Domain.EthicsPolicy,
        SchemaOrg.Domain.OwnershipFundingInfo,
        SchemaOrg.Domain.UnnamedSourcesPolicy
    {}
}

extension SchemaOrg.NewsMediaOrganization.`Protocol` {

    public var masthead: SchemaOrg.Range.Masthead? {
        get { self[first: "masthead"] }
        set { self[first: "masthead"] = newValue }
    }

    public var missionCoveragePrioritiesPolicy: SchemaOrg.Range.MissionCoveragePrioritiesPolicy? {
        get { self[first: "missionCoveragePrioritiesPolicy"] }
        set { self[first: "missionCoveragePrioritiesPolicy"] = newValue }
    }

    public var noBylinesPolicy: SchemaOrg.Range.NoBylinesPolicy? {
        get { self[first: "noBylinesPolicy"] }
        set { self[first: "noBylinesPolicy"] = newValue }
    }

    public var verificationFactCheckingPolicy: SchemaOrg.Range.VerificationFactCheckingPolicy? {
        get { self[first: "verificationFactCheckingPolicy"] }
        set { self[first: "verificationFactCheckingPolicy"] = newValue }
    }
}
