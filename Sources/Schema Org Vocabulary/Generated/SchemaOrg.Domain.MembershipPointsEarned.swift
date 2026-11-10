extension SchemaOrg.Domain {

    public protocol MembershipPointsEarned: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MembershipPointsEarned {

    public var membershipPointsEarned: SchemaOrg.Range.MembershipPointsEarned? {
        get { self[first: "membershipPointsEarned"] }
        set { self[first: "membershipPointsEarned"] = newValue }
    }
}
