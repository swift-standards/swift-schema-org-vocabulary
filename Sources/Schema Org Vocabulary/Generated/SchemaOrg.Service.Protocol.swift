extension SchemaOrg.Service {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.AreaServed,
        SchemaOrg.Domain.Audience,
        SchemaOrg.Domain.Award,
        SchemaOrg.Domain.Brand,
        SchemaOrg.Domain.Broker,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.HasCertification,
        SchemaOrg.Domain.HasOfferCatalog,
        SchemaOrg.Domain.HoursAvailable,
        SchemaOrg.Domain.IsRelatedTo,
        SchemaOrg.Domain.IsSimilarTo,
        SchemaOrg.Domain.Logo,
        SchemaOrg.Domain.Offers,
        SchemaOrg.Domain.Provider,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.ServiceArea,
        SchemaOrg.Domain.Slogan
    {}
}

extension SchemaOrg.Service.`Protocol` {

    public var availableChannel: SchemaOrg.ServiceChannel? {
        get { self[first: "availableChannel"] }
        set { self[first: "availableChannel"] = newValue }
    }

    public var produces: SchemaOrg.Thing? {
        get { self[first: "produces"] }
        set { self[first: "produces"] = newValue }
    }

    public var providerMobility: Swift.String? {
        get { self[first: "providerMobility"] }
        set { self[first: "providerMobility"] = newValue }
    }

    public var serviceAudience: SchemaOrg.Audience? {
        get { self[first: "serviceAudience"] }
        set { self[first: "serviceAudience"] = newValue }
    }

    public var serviceOutput: SchemaOrg.Thing? {
        get { self[first: "serviceOutput"] }
        set { self[first: "serviceOutput"] = newValue }
    }

    public var serviceType: SchemaOrg.Range.ServiceType? {
        get { self[first: "serviceType"] }
        set { self[first: "serviceType"] = newValue }
    }

    public var termsOfService: SchemaOrg.Range.TermsOfService? {
        get { self[first: "termsOfService"] }
        set { self[first: "termsOfService"] = newValue }
    }
}
