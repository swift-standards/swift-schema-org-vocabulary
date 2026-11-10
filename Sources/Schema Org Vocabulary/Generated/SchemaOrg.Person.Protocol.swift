extension SchemaOrg.Person {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.Address,
        SchemaOrg.Domain.AgentInteractionStatistic,
        SchemaOrg.Domain.Award,
        SchemaOrg.Domain.Awards,
        SchemaOrg.Domain.Brand,
        SchemaOrg.Domain.CallSign,
        SchemaOrg.Domain.ContactPoint,
        SchemaOrg.Domain.ContactPoints,
        SchemaOrg.Domain.Duns,
        SchemaOrg.Domain.Email,
        SchemaOrg.Domain.FaxNumber,
        SchemaOrg.Domain.Funder,
        SchemaOrg.Domain.Funding,
        SchemaOrg.Domain.Gender,
        SchemaOrg.Domain.GlobalLocationNumber,
        SchemaOrg.Domain.HasCertification,
        SchemaOrg.Domain.HasCredential,
        SchemaOrg.Domain.HasOfferCatalog,
        SchemaOrg.Domain.HasPOS,
        SchemaOrg.Domain.Height,
        SchemaOrg.Domain.InteractionStatistic,
        SchemaOrg.Domain.IsicV4,
        SchemaOrg.Domain.KnowsAbout,
        SchemaOrg.Domain.KnowsLanguage,
        SchemaOrg.Domain.MakesOffer,
        SchemaOrg.Domain.MemberOf,
        SchemaOrg.Domain.Naics,
        SchemaOrg.Domain.Owns,
        SchemaOrg.Domain.PublishingPrinciples,
        SchemaOrg.Domain.Seeks,
        SchemaOrg.Domain.Skills,
        SchemaOrg.Domain.Sponsor,
        SchemaOrg.Domain.TaxID,
        SchemaOrg.Domain.Telephone,
        SchemaOrg.Domain.VatID,
        SchemaOrg.Domain.Weight
    {}
}

extension SchemaOrg.Person.`Protocol` {

    public var additionalName: Swift.String? {
        get { self[first: "additionalName"] }
        set { self[first: "additionalName"] = newValue }
    }

    public var affiliation: SchemaOrg.Organization? {
        get { self[first: "affiliation"] }
        set { self[first: "affiliation"] = newValue }
    }

    public var alumniOf: SchemaOrg.Range.AlumniOf? {
        get { self[first: "alumniOf"] }
        set { self[first: "alumniOf"] = newValue }
    }

    public var birthDate: ISO_8601.CalendarDate? {
        get { self[first: "birthDate"] }
        set { self[first: "birthDate"] = newValue }
    }

    public var birthPlace: SchemaOrg.Place? {
        get { self[first: "birthPlace"] }
        set { self[first: "birthPlace"] = newValue }
    }

    public var children: SchemaOrg.Person? {
        get { self[first: "children"] }
        set { self[first: "children"] = newValue }
    }

    public var colleague: SchemaOrg.Range.Colleague? {
        get { self[first: "colleague"] }
        set { self[first: "colleague"] = newValue }
    }

    public var colleagues: SchemaOrg.Person? {
        get { self[first: "colleagues"] }
        set { self[first: "colleagues"] = newValue }
    }

    public var deathDate: ISO_8601.CalendarDate? {
        get { self[first: "deathDate"] }
        set { self[first: "deathDate"] = newValue }
    }

    public var deathPlace: SchemaOrg.Place? {
        get { self[first: "deathPlace"] }
        set { self[first: "deathPlace"] = newValue }
    }

    public var familyName: Swift.String? {
        get { self[first: "familyName"] }
        set { self[first: "familyName"] = newValue }
    }

    public var follows: SchemaOrg.Person? {
        get { self[first: "follows"] }
        set { self[first: "follows"] = newValue }
    }

    public var givenName: Swift.String? {
        get { self[first: "givenName"] }
        set { self[first: "givenName"] = newValue }
    }

    public var hasOccupation: SchemaOrg.Occupation? {
        get { self[first: "hasOccupation"] }
        set { self[first: "hasOccupation"] = newValue }
    }

    public var homeLocation: SchemaOrg.Range.HomeLocation? {
        get { self[first: "homeLocation"] }
        set { self[first: "homeLocation"] = newValue }
    }

    public var honorificPrefix: Swift.String? {
        get { self[first: "honorificPrefix"] }
        set { self[first: "honorificPrefix"] = newValue }
    }

    public var honorificSuffix: Swift.String? {
        get { self[first: "honorificSuffix"] }
        set { self[first: "honorificSuffix"] = newValue }
    }

    public var jobTitle: SchemaOrg.Range.JobTitle? {
        get { self[first: "jobTitle"] }
        set { self[first: "jobTitle"] = newValue }
    }

    public var knows: SchemaOrg.Person? {
        get { self[first: "knows"] }
        set { self[first: "knows"] = newValue }
    }

    public var lifeEvent: SchemaOrg.Event? {
        get { self[first: "lifeEvent"] }
        set { self[first: "lifeEvent"] = newValue }
    }

    public var nationality: SchemaOrg.Country? {
        get { self[first: "nationality"] }
        set { self[first: "nationality"] = newValue }
    }

    public var netWorth: SchemaOrg.Range.NetWorth? {
        get { self[first: "netWorth"] }
        set { self[first: "netWorth"] = newValue }
    }

    public var parent: SchemaOrg.Person? {
        get { self[first: "parent"] }
        set { self[first: "parent"] = newValue }
    }

    public var parents: SchemaOrg.Person? {
        get { self[first: "parents"] }
        set { self[first: "parents"] = newValue }
    }

    public var performerIn: SchemaOrg.Event? {
        get { self[first: "performerIn"] }
        set { self[first: "performerIn"] = newValue }
    }

    public var pronouns: SchemaOrg.Range.Pronouns? {
        get { self[first: "pronouns"] }
        set { self[first: "pronouns"] = newValue }
    }

    public var relatedTo: SchemaOrg.Person? {
        get { self[first: "relatedTo"] }
        set { self[first: "relatedTo"] = newValue }
    }

    public var sibling: SchemaOrg.Person? {
        get { self[first: "sibling"] }
        set { self[first: "sibling"] = newValue }
    }

    public var siblings: SchemaOrg.Person? {
        get { self[first: "siblings"] }
        set { self[first: "siblings"] = newValue }
    }

    public var spouse: SchemaOrg.Person? {
        get { self[first: "spouse"] }
        set { self[first: "spouse"] = newValue }
    }

    public var workLocation: SchemaOrg.Range.WorkLocation? {
        get { self[first: "workLocation"] }
        set { self[first: "workLocation"] = newValue }
    }

    public var worksFor: SchemaOrg.Organization? {
        get { self[first: "worksFor"] }
        set { self[first: "worksFor"] = newValue }
    }
}
