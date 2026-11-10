extension SchemaOrg.SpecialAnnouncement {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.DatePosted,
        SchemaOrg.Domain.WebFeed
    {}
}

extension SchemaOrg.SpecialAnnouncement.`Protocol` {

    public var announcementLocation: SchemaOrg.Range.AnnouncementLocation? {
        get { self[first: "announcementLocation"] }
        set { self[first: "announcementLocation"] = newValue }
    }

    public var diseasePreventionInfo: SchemaOrg.Range.DiseasePreventionInfo? {
        get { self[first: "diseasePreventionInfo"] }
        set { self[first: "diseasePreventionInfo"] = newValue }
    }

    public var diseaseSpreadStatistics: SchemaOrg.Range.DiseaseSpreadStatistics? {
        get { self[first: "diseaseSpreadStatistics"] }
        set { self[first: "diseaseSpreadStatistics"] = newValue }
    }

    public var gettingTestedInfo: SchemaOrg.Range.GettingTestedInfo? {
        get { self[first: "gettingTestedInfo"] }
        set { self[first: "gettingTestedInfo"] = newValue }
    }

    public var governmentBenefitsInfo: SchemaOrg.GovernmentService? {
        get { self[first: "governmentBenefitsInfo"] }
        set { self[first: "governmentBenefitsInfo"] = newValue }
    }

    public var newsUpdatesAndGuidelines: SchemaOrg.Range.NewsUpdatesAndGuidelines? {
        get { self[first: "newsUpdatesAndGuidelines"] }
        set { self[first: "newsUpdatesAndGuidelines"] = newValue }
    }

    public var publicTransportClosuresInfo: SchemaOrg.Range.PublicTransportClosuresInfo? {
        get { self[first: "publicTransportClosuresInfo"] }
        set { self[first: "publicTransportClosuresInfo"] = newValue }
    }

    public var quarantineGuidelines: SchemaOrg.Range.QuarantineGuidelines? {
        get { self[first: "quarantineGuidelines"] }
        set { self[first: "quarantineGuidelines"] = newValue }
    }

    public var schoolClosuresInfo: SchemaOrg.Range.SchoolClosuresInfo? {
        get { self[first: "schoolClosuresInfo"] }
        set { self[first: "schoolClosuresInfo"] = newValue }
    }

    public var travelBans: SchemaOrg.Range.TravelBans? {
        get { self[first: "travelBans"] }
        set { self[first: "travelBans"] = newValue }
    }
}
