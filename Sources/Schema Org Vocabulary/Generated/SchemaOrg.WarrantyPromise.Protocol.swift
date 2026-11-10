extension SchemaOrg.WarrantyPromise {

    public protocol `Protocol`: SchemaOrg.StructuredValue.`Protocol` {}
}

extension SchemaOrg.WarrantyPromise.`Protocol` {

    public var durationOfWarranty: SchemaOrg.QuantitativeValue? {
        get { self[first: "durationOfWarranty"] }
        set { self[first: "durationOfWarranty"] = newValue }
    }

    public var warrantyScope: SchemaOrg.WarrantyScope? {
        get { self[first: "warrantyScope"] }
        set { self[first: "warrantyScope"] = newValue }
    }
}
