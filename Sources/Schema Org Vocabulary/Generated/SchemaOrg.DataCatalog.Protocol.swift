extension SchemaOrg.DataCatalog {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.MeasurementMethod,
        SchemaOrg.Domain.MeasurementTechnique
    {}
}

extension SchemaOrg.DataCatalog.`Protocol` {

    public var dataset: SchemaOrg.Dataset? {
        get { self[first: "dataset"] }
        set { self[first: "dataset"] = newValue }
    }
}
