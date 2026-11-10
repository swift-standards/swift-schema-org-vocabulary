extension SchemaOrg.Finding {

    public enum Kind: Sendable, Hashable {

        case domain

        case range(SchemaOrg.Value)
    }
}
