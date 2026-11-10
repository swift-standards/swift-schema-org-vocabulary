extension SchemaOrg.Organization {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.AcceptedPaymentMethod,
        SchemaOrg.Domain.ActionableFeedbackPolicy,
        SchemaOrg.Domain.Address,
        SchemaOrg.Domain.AgentInteractionStatistic,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.Alumni,
        SchemaOrg.Domain.AreaServed,
        SchemaOrg.Domain.AuthorizedRepresentative,
        SchemaOrg.Domain.Award,
        SchemaOrg.Domain.Awards,
        SchemaOrg.Domain.Brand,
        SchemaOrg.Domain.ContactPoint,
        SchemaOrg.Domain.ContactPoints,
        SchemaOrg.Domain.CorrectionsPolicy,
        SchemaOrg.Domain.DiversityPolicy,
        SchemaOrg.Domain.DiversityStaffingReport,
        SchemaOrg.Domain.Duns,
        SchemaOrg.Domain.Email,
        SchemaOrg.Domain.EthicsPolicy,
        SchemaOrg.Domain.Event,
        SchemaOrg.Domain.Events,
        SchemaOrg.Domain.FaxNumber,
        SchemaOrg.Domain.Funder,
        SchemaOrg.Domain.Funding,
        SchemaOrg.Domain.GlobalLocationNumber,
        SchemaOrg.Domain.HasCertification,
        SchemaOrg.Domain.HasCredential,
        SchemaOrg.Domain.HasGS1DigitalLink,
        SchemaOrg.Domain.HasMerchantReturnPolicy,
        SchemaOrg.Domain.HasOfferCatalog,
        SchemaOrg.Domain.HasPOS,
        SchemaOrg.Domain.HasProductReturnPolicy,
        SchemaOrg.Domain.HasShippingService,
        SchemaOrg.Domain.InteractionStatistic,
        SchemaOrg.Domain.IsicV4,
        SchemaOrg.Domain.Keywords,
        SchemaOrg.Domain.KnowsAbout,
        SchemaOrg.Domain.KnowsLanguage,
        SchemaOrg.Domain.Location,
        SchemaOrg.Domain.Logo,
        SchemaOrg.Domain.MakesOffer,
        SchemaOrg.Domain.Member,
        SchemaOrg.Domain.MemberOf,
        SchemaOrg.Domain.Members,
        SchemaOrg.Domain.Naics,
        SchemaOrg.Domain.NumberOfEmployees,
        SchemaOrg.Domain.OwnershipFundingInfo,
        SchemaOrg.Domain.Owns,
        SchemaOrg.Domain.PublishingPrinciples,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.Reviews,
        SchemaOrg.Domain.Seeks,
        SchemaOrg.Domain.ServiceArea,
        SchemaOrg.Domain.Skills,
        SchemaOrg.Domain.Slogan,
        SchemaOrg.Domain.Sponsor,
        SchemaOrg.Domain.TaxID,
        SchemaOrg.Domain.Telephone,
        SchemaOrg.Domain.UnnamedSourcesPolicy,
        SchemaOrg.Domain.VatID
    {}
}

extension SchemaOrg.Organization.`Protocol` {

    public var companyRegistration: SchemaOrg.Certification? {
        get { self[first: "companyRegistration"] }
        set { self[first: "companyRegistration"] = newValue }
    }

    public var department: SchemaOrg.Organization? {
        get { self[first: "department"] }
        set { self[first: "department"] = newValue }
    }

    public var dissolutionDate: ISO_8601.CalendarDate? {
        get { self[first: "dissolutionDate"] }
        set { self[first: "dissolutionDate"] = newValue }
    }

    public var employee: SchemaOrg.Person? {
        get { self[first: "employee"] }
        set { self[first: "employee"] = newValue }
    }

    public var employees: SchemaOrg.Person? {
        get { self[first: "employees"] }
        set { self[first: "employees"] = newValue }
    }

    public var founder: SchemaOrg.Range.Founder? {
        get { self[first: "founder"] }
        set { self[first: "founder"] = newValue }
    }

    public var founders: SchemaOrg.Person? {
        get { self[first: "founders"] }
        set { self[first: "founders"] = newValue }
    }

    public var foundingDate: ISO_8601.CalendarDate? {
        get { self[first: "foundingDate"] }
        set { self[first: "foundingDate"] = newValue }
    }

    public var foundingLocation: SchemaOrg.Place? {
        get { self[first: "foundingLocation"] }
        set { self[first: "foundingLocation"] = newValue }
    }

    public var hasMemberProgram: SchemaOrg.MemberProgram? {
        get { self[first: "hasMemberProgram"] }
        set { self[first: "hasMemberProgram"] = newValue }
    }

    public var iso6523Code: Swift.String? {
        get { self[first: "iso6523Code"] }
        set { self[first: "iso6523Code"] = newValue }
    }

    public var legalAddress: SchemaOrg.PostalAddress? {
        get { self[first: "legalAddress"] }
        set { self[first: "legalAddress"] = newValue }
    }

    public var legalName: Swift.String? {
        get { self[first: "legalName"] }
        set { self[first: "legalName"] = newValue }
    }

    public var legalRepresentative: SchemaOrg.Person? {
        get { self[first: "legalRepresentative"] }
        set { self[first: "legalRepresentative"] = newValue }
    }

    public var leiCode: Swift.String? {
        get { self[first: "leiCode"] }
        set { self[first: "leiCode"] = newValue }
    }

    public var nonprofitStatus: SchemaOrg.NonprofitType? {
        get { self[first: "nonprofitStatus"] }
        set { self[first: "nonprofitStatus"] = newValue }
    }

    public var parentOrganization: SchemaOrg.Organization? {
        get { self[first: "parentOrganization"] }
        set { self[first: "parentOrganization"] = newValue }
    }

    public var subOrganization: SchemaOrg.Organization? {
        get { self[first: "subOrganization"] }
        set { self[first: "subOrganization"] = newValue }
    }
}
