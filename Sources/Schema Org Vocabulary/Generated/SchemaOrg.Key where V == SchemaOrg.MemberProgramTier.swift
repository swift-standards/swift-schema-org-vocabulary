extension SchemaOrg.Key where V == SchemaOrg.MemberProgramTier {

    public static var hasTiers: Self {
        Self("hasTiers")
    }

    public static var validForMemberTier: Self {
        Self("validForMemberTier")
    }
}
