extension SchemaOrg.Chapter {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.PageEnd,
        SchemaOrg.Domain.PageStart,
        SchemaOrg.Domain.Pagination
    {}
}
