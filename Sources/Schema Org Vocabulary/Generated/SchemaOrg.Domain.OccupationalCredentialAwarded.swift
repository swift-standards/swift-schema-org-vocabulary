extension SchemaOrg.Domain {

    public protocol OccupationalCredentialAwarded: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.OccupationalCredentialAwarded {

    public var occupationalCredentialAwarded: SchemaOrg.Range.OccupationalCredentialAwarded? {
        get { self[first: "occupationalCredentialAwarded"] }
        set { self[first: "occupationalCredentialAwarded"] = newValue }
    }
}
