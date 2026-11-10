extension Schema_Org.Finding {

    public enum Kind: Sendable, Hashable {

        case domain

        case range(Schema_Org.Value)
    }
}
