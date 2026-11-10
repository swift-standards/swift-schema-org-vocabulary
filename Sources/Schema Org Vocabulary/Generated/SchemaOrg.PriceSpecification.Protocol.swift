extension SchemaOrg.PriceSpecification {

    public protocol `Protocol`:
        SchemaOrg.StructuredValue.`Protocol`,
        SchemaOrg.Domain.EligibleQuantity,
        SchemaOrg.Domain.EligibleTransactionVolume,
        SchemaOrg.Domain.MembershipPointsEarned,
        SchemaOrg.Domain.Price,
        SchemaOrg.Domain.PriceCurrency,
        SchemaOrg.Domain.ValidForMemberTier,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidThrough
    {}
}

extension SchemaOrg.PriceSpecification.`Protocol` {

    public var maxPrice: Swift.Double? {
        get { self[first: "maxPrice"] }
        set { self[first: "maxPrice"] = newValue }
    }

    public var minPrice: Swift.Double? {
        get { self[first: "minPrice"] }
        set { self[first: "minPrice"] = newValue }
    }

    public var valueAddedTaxIncluded: Swift.Bool? {
        get { self[first: "valueAddedTaxIncluded"] }
        set { self[first: "valueAddedTaxIncluded"] = newValue }
    }
}
