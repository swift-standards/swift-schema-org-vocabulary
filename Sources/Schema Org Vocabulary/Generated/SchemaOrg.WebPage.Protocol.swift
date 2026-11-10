extension SchemaOrg.WebPage {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Speakable
    {}
}

extension SchemaOrg.WebPage.`Protocol` {

    public var breadcrumb: SchemaOrg.Range.Breadcrumb? {
        get { self[first: "breadcrumb"] }
        set { self[first: "breadcrumb"] = newValue }
    }

    public var lastReviewed: ISO_8601.CalendarDate? {
        get { self[first: "lastReviewed"] }
        set { self[first: "lastReviewed"] = newValue }
    }

    public var mainContentOfPage: SchemaOrg.WebPageElement? {
        get { self[first: "mainContentOfPage"] }
        set { self[first: "mainContentOfPage"] = newValue }
    }

    public var primaryImageOfPage: SchemaOrg.ImageObject? {
        get { self[first: "primaryImageOfPage"] }
        set { self[first: "primaryImageOfPage"] = newValue }
    }

    public var relatedLink: RFC_3986.URI? {
        get { self[first: "relatedLink"] }
        set { self[first: "relatedLink"] = newValue }
    }

    public var reviewedBy: SchemaOrg.Range.ReviewedBy? {
        get { self[first: "reviewedBy"] }
        set { self[first: "reviewedBy"] = newValue }
    }

    public var significantLink: RFC_3986.URI? {
        get { self[first: "significantLink"] }
        set { self[first: "significantLink"] = newValue }
    }

    public var significantLinks: RFC_3986.URI? {
        get { self[first: "significantLinks"] }
        set { self[first: "significantLinks"] = newValue }
    }

    public var specialty: SchemaOrg.Specialty? {
        get { self[first: "specialty"] }
        set { self[first: "specialty"] = newValue }
    }
}
