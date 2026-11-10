extension SchemaOrg.Key where V == SchemaOrg.Invoice {

    public static var partOfInvoice: Self {
        Self("partOfInvoice")
    }
}
