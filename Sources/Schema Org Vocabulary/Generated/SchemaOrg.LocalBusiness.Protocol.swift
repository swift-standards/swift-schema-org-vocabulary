extension SchemaOrg.LocalBusiness {

    public protocol `Protocol`:
        SchemaOrg.Organization.`Protocol`,
        SchemaOrg.Place.`Protocol`,
        SchemaOrg.Domain.FloorLevel,
        SchemaOrg.Domain.OpeningHours
    {}
}

extension SchemaOrg.LocalBusiness.`Protocol` {

    public var branchOf: SchemaOrg.Organization? {
        get { self[first: "branchOf"] }
        set { self[first: "branchOf"] = newValue }
    }

    public var currenciesAccepted: Swift.String? {
        get { self[first: "currenciesAccepted"] }
        set { self[first: "currenciesAccepted"] = newValue }
    }

    public var paymentAccepted: Swift.String? {
        get { self[first: "paymentAccepted"] }
        set { self[first: "paymentAccepted"] = newValue }
    }

    public var priceRange: Swift.String? {
        get { self[first: "priceRange"] }
        set { self[first: "priceRange"] = newValue }
    }
}
