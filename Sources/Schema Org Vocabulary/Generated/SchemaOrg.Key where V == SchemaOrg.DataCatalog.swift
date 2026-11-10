extension SchemaOrg.Key where V == SchemaOrg.DataCatalog {

    public static var catalog: Self {
        Self("catalog")
    }

    public static var includedDataCatalog: Self {
        Self("includedDataCatalog")
    }

    public static var includedInDataCatalog: Self {
        Self("includedInDataCatalog")
    }
}
