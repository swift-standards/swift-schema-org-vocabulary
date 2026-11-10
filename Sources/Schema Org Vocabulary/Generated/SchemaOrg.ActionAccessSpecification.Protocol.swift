extension SchemaOrg.ActionAccessSpecification {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AvailabilityEnds,
        SchemaOrg.Domain.AvailabilityStarts,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.EligibleRegion,
        SchemaOrg.Domain.ExpectsAcceptanceOf,
        SchemaOrg.Domain.IneligibleRegion,
        SchemaOrg.Domain.RequiresSubscription
    {}
}
