extension SchemaOrg.Guide {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.ReviewAspect
    {}
}
