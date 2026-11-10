extension SchemaOrg.Domain {

    public protocol ValidForMemberTier: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ValidForMemberTier {

    public var validForMemberTier: SchemaOrg.MemberProgramTier? {
        get { self[first: "validForMemberTier"] }
        set { self[first: "validForMemberTier"] = newValue }
    }
}
