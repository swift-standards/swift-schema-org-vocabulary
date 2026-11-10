extension SchemaOrg.Airline {

    public protocol `Protocol`:
        SchemaOrg.Organization.`Protocol`,
        SchemaOrg.Domain.BoardingPolicy,
        SchemaOrg.Domain.IataCode
    {}
}
