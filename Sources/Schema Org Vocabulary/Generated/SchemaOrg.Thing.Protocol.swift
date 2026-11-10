extension SchemaOrg.Thing {

    public protocol `Protocol`: SchemaOrg.Resource {}
}

extension SchemaOrg.Thing.`Protocol` {

    public var additionalType: SchemaOrg.Range.AdditionalType? {
        get { self[first: "additionalType"] }
        set { self[first: "additionalType"] = newValue }
    }

    public var alternateName: Swift.String? {
        get { self[first: "alternateName"] }
        set { self[first: "alternateName"] = newValue }
    }

    public var description: SchemaOrg.Range.Description? {
        get { self[first: "description"] }
        set { self[first: "description"] = newValue }
    }

    public var disambiguatingDescription: Swift.String? {
        get { self[first: "disambiguatingDescription"] }
        set { self[first: "disambiguatingDescription"] = newValue }
    }

    public var identifier: SchemaOrg.Range.Identifier? {
        get { self[first: "identifier"] }
        set { self[first: "identifier"] = newValue }
    }

    public var image: SchemaOrg.Range.Image? {
        get { self[first: "image"] }
        set { self[first: "image"] = newValue }
    }

    public var mainEntityOfPage: SchemaOrg.Range.MainEntityOfPage? {
        get { self[first: "mainEntityOfPage"] }
        set { self[first: "mainEntityOfPage"] = newValue }
    }

    public var name: Swift.String? {
        get { self[first: "name"] }
        set { self[first: "name"] = newValue }
    }

    public var owner: SchemaOrg.Range.Owner? {
        get { self[first: "owner"] }
        set { self[first: "owner"] = newValue }
    }

    public var potentialAction: SchemaOrg.Action? {
        get { self[first: "potentialAction"] }
        set { self[first: "potentialAction"] = newValue }
    }

    public var sameAs: RFC_3986.URI? {
        get { self[first: "sameAs"] }
        set { self[first: "sameAs"] = newValue }
    }

    public var subjectOf: SchemaOrg.Range.SubjectOf? {
        get { self[first: "subjectOf"] }
        set { self[first: "subjectOf"] = newValue }
    }

    public var url: RFC_3986.URI? {
        get { self[first: "url"] }
        set { self[first: "url"] = newValue }
    }
}
