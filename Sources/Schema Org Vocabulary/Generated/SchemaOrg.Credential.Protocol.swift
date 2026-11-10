extension SchemaOrg.Credential {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.ValidFor,
        SchemaOrg.Domain.ValidIn
    {}
}

extension SchemaOrg.Credential.`Protocol` {

    public var credentialCategory: SchemaOrg.Range.CredentialCategory? {
        get { self[first: "credentialCategory"] }
        set { self[first: "credentialCategory"] = newValue }
    }

    public var recognizedBy: SchemaOrg.Organization? {
        get { self[first: "recognizedBy"] }
        set { self[first: "recognizedBy"] = newValue }
    }
}
