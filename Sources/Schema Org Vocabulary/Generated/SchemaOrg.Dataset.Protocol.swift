extension SchemaOrg.Dataset {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Issn,
        SchemaOrg.Domain.MeasurementMethod,
        SchemaOrg.Domain.MeasurementTechnique,
        SchemaOrg.Domain.VariableMeasured
    {}
}

extension SchemaOrg.Dataset.`Protocol` {

    public var catalog: SchemaOrg.DataCatalog? {
        get { self[first: "catalog"] }
        set { self[first: "catalog"] = newValue }
    }

    public var datasetTimeInterval: ISO_8601.DateTime? {
        get { self[first: "datasetTimeInterval"] }
        set { self[first: "datasetTimeInterval"] = newValue }
    }

    public var distribution: SchemaOrg.DataDownload? {
        get { self[first: "distribution"] }
        set { self[first: "distribution"] = newValue }
    }

    public var includedDataCatalog: SchemaOrg.DataCatalog? {
        get { self[first: "includedDataCatalog"] }
        set { self[first: "includedDataCatalog"] = newValue }
    }

    public var includedInDataCatalog: SchemaOrg.DataCatalog? {
        get { self[first: "includedInDataCatalog"] }
        set { self[first: "includedInDataCatalog"] = newValue }
    }
}
