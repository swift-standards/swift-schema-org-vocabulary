extension SchemaOrg.Range {

    public enum MemberOf: SchemaOrg.Value, Swift.Hashable {

        case memberProgramTier(SchemaOrg.MemberProgramTier)

        case organization(SchemaOrg.Organization)

        case programMembership(SchemaOrg.ProgramMembership)
    }
}

extension SchemaOrg.Range.MemberOf {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .memberProgramTier(let value):
            SchemaOrg.MemberProgramTier.serialize(value)

        case .organization(let value):
            SchemaOrg.Organization.serialize(value)

        case .programMembership(let value):
            SchemaOrg.ProgramMembership.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MemberProgramTier.deserialize(value) {
            return .memberProgramTier(value)
        }
        if let value = SchemaOrg.ProgramMembership.deserialize(value) {
            return .programMembership(value)
        }
        if let value = SchemaOrg.Organization.deserialize(value) {
            return .organization(value)
        }
        return nil
    }
}
