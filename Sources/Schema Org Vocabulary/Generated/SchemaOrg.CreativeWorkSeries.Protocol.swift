extension SchemaOrg.CreativeWorkSeries {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Series.`Protocol`,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.Issn,
        SchemaOrg.Domain.StartDate
    {}
}
