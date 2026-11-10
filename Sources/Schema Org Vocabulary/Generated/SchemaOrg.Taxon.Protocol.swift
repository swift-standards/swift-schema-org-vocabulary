extension SchemaOrg.Taxon {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.HasDefinedTerm
    {}
}

extension SchemaOrg.Taxon.`Protocol` {

    public var childTaxon: SchemaOrg.Range.ChildTaxon? {
        get { self[first: "childTaxon"] }
        set { self[first: "childTaxon"] = newValue }
    }

    public var parentTaxon: SchemaOrg.Range.ParentTaxon? {
        get { self[first: "parentTaxon"] }
        set { self[first: "parentTaxon"] = newValue }
    }

    public var taxonRank: SchemaOrg.Range.TaxonRank? {
        get { self[first: "taxonRank"] }
        set { self[first: "taxonRank"] = newValue }
    }
}
