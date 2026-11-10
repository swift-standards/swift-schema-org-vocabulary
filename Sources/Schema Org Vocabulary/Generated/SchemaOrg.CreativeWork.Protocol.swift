extension SchemaOrg.CreativeWork {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.About,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.Assesses,
        SchemaOrg.Domain.AssociatedMedia,
        SchemaOrg.Domain.Audience,
        SchemaOrg.Domain.Author,
        SchemaOrg.Domain.Award,
        SchemaOrg.Domain.Awards,
        SchemaOrg.Domain.Comment,
        SchemaOrg.Domain.Contributor,
        SchemaOrg.Domain.CountryOfOrigin,
        SchemaOrg.Domain.Creator,
        SchemaOrg.Domain.DateCreated,
        SchemaOrg.Domain.DateModified,
        SchemaOrg.Domain.DatePublished,
        SchemaOrg.Domain.DisplayLocation,
        SchemaOrg.Domain.EducationalAlignment,
        SchemaOrg.Domain.EducationalLevel,
        SchemaOrg.Domain.EducationalUse,
        SchemaOrg.Domain.EncodingFormat,
        SchemaOrg.Domain.Expires,
        SchemaOrg.Domain.Funder,
        SchemaOrg.Domain.Funding,
        SchemaOrg.Domain.Genre,
        SchemaOrg.Domain.InLanguage,
        SchemaOrg.Domain.InteractionStatistic,
        SchemaOrg.Domain.InterpretedAsClaim,
        SchemaOrg.Domain.IsAccessibleForFree,
        SchemaOrg.Domain.IsFamilyFriendly,
        SchemaOrg.Domain.Keywords,
        SchemaOrg.Domain.LearningResourceType,
        SchemaOrg.Domain.Material,
        SchemaOrg.Domain.Offers,
        SchemaOrg.Domain.Pattern,
        SchemaOrg.Domain.Position,
        SchemaOrg.Domain.Provider,
        SchemaOrg.Domain.Publisher,
        SchemaOrg.Domain.PublishingPrinciples,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.Reviews,
        SchemaOrg.Domain.Size,
        SchemaOrg.Domain.Sponsor,
        SchemaOrg.Domain.Teaches,
        SchemaOrg.Domain.Translator,
        SchemaOrg.Domain.TypicalAgeRange,
        SchemaOrg.Domain.WordCount
    {}
}

extension SchemaOrg.CreativeWork.`Protocol` {

    public var abstract: Swift.String? {
        get { self[first: "abstract"] }
        set { self[first: "abstract"] = newValue }
    }

    public var accessMode: Swift.String? {
        get { self[first: "accessMode"] }
        set { self[first: "accessMode"] = newValue }
    }

    public var accessModeSufficient: SchemaOrg.ItemList? {
        get { self[first: "accessModeSufficient"] }
        set { self[first: "accessModeSufficient"] = newValue }
    }

    public var accessibilityAPI: Swift.String? {
        get { self[first: "accessibilityAPI"] }
        set { self[first: "accessibilityAPI"] = newValue }
    }

    public var accessibilityControl: Swift.String? {
        get { self[first: "accessibilityControl"] }
        set { self[first: "accessibilityControl"] = newValue }
    }

    public var accessibilityFeature: Swift.String? {
        get { self[first: "accessibilityFeature"] }
        set { self[first: "accessibilityFeature"] = newValue }
    }

    public var accessibilityHazard: Swift.String? {
        get { self[first: "accessibilityHazard"] }
        set { self[first: "accessibilityHazard"] = newValue }
    }

    public var accessibilitySummary: Swift.String? {
        get { self[first: "accessibilitySummary"] }
        set { self[first: "accessibilitySummary"] = newValue }
    }

    public var accountablePerson: SchemaOrg.Person? {
        get { self[first: "accountablePerson"] }
        set { self[first: "accountablePerson"] = newValue }
    }

    public var acquireLicensePage: SchemaOrg.Range.AcquireLicensePage? {
        get { self[first: "acquireLicensePage"] }
        set { self[first: "acquireLicensePage"] = newValue }
    }

    public var alternativeHeadline: Swift.String? {
        get { self[first: "alternativeHeadline"] }
        set { self[first: "alternativeHeadline"] = newValue }
    }

    public var archivedAt: SchemaOrg.Range.ArchivedAt? {
        get { self[first: "archivedAt"] }
        set { self[first: "archivedAt"] = newValue }
    }

    public var audio: SchemaOrg.Range.Audio? {
        get { self[first: "audio"] }
        set { self[first: "audio"] = newValue }
    }

    public var character: SchemaOrg.Person? {
        get { self[first: "character"] }
        set { self[first: "character"] = newValue }
    }

    public var citation: SchemaOrg.Range.Citation? {
        get { self[first: "citation"] }
        set { self[first: "citation"] = newValue }
    }

    public var commentCount: Swift.Int? {
        get { self[first: "commentCount"] }
        set { self[first: "commentCount"] = newValue }
    }

    public var conditionsOfAccess: Swift.String? {
        get { self[first: "conditionsOfAccess"] }
        set { self[first: "conditionsOfAccess"] = newValue }
    }

    public var contentLocation: SchemaOrg.Place? {
        get { self[first: "contentLocation"] }
        set { self[first: "contentLocation"] = newValue }
    }

    public var contentRating: SchemaOrg.Range.ContentRating? {
        get { self[first: "contentRating"] }
        set { self[first: "contentRating"] = newValue }
    }

    public var contentReferenceTime: ISO_8601.DateTime? {
        get { self[first: "contentReferenceTime"] }
        set { self[first: "contentReferenceTime"] = newValue }
    }

    public var copyrightHolder: SchemaOrg.Range.CopyrightHolder? {
        get { self[first: "copyrightHolder"] }
        set { self[first: "copyrightHolder"] = newValue }
    }

    public var copyrightNotice: Swift.String? {
        get { self[first: "copyrightNotice"] }
        set { self[first: "copyrightNotice"] = newValue }
    }

    public var copyrightYear: Swift.Double? {
        get { self[first: "copyrightYear"] }
        set { self[first: "copyrightYear"] = newValue }
    }

    public var correction: SchemaOrg.Range.Correction? {
        get { self[first: "correction"] }
        set { self[first: "correction"] = newValue }
    }

    public var creativeWorkStatus: SchemaOrg.Range.CreativeWorkStatus? {
        get { self[first: "creativeWorkStatus"] }
        set { self[first: "creativeWorkStatus"] = newValue }
    }

    public var creditText: Swift.String? {
        get { self[first: "creditText"] }
        set { self[first: "creditText"] = newValue }
    }

    public var digitalSourceType: SchemaOrg.IPTCDigitalSourceEnumeration? {
        get { self[first: "digitalSourceType"] }
        set { self[first: "digitalSourceType"] = newValue }
    }

    public var discussionUrl: RFC_3986.URI? {
        get { self[first: "discussionUrl"] }
        set { self[first: "discussionUrl"] = newValue }
    }

    public var editEIDR: SchemaOrg.Range.EditEIDR? {
        get { self[first: "editEIDR"] }
        set { self[first: "editEIDR"] = newValue }
    }

    public var editor: SchemaOrg.Person? {
        get { self[first: "editor"] }
        set { self[first: "editor"] = newValue }
    }

    public var encoding: SchemaOrg.MediaObject? {
        get { self[first: "encoding"] }
        set { self[first: "encoding"] = newValue }
    }

    public var encodings: SchemaOrg.MediaObject? {
        get { self[first: "encodings"] }
        set { self[first: "encodings"] = newValue }
    }

    public var exampleOfWork: SchemaOrg.CreativeWork? {
        get { self[first: "exampleOfWork"] }
        set { self[first: "exampleOfWork"] = newValue }
    }

    public var fileFormat: SchemaOrg.Range.FileFormat? {
        get { self[first: "fileFormat"] }
        set { self[first: "fileFormat"] = newValue }
    }

    public var hasPart: SchemaOrg.CreativeWork? {
        get { self[first: "hasPart"] }
        set { self[first: "hasPart"] = newValue }
    }

    public var headline: Swift.String? {
        get { self[first: "headline"] }
        set { self[first: "headline"] = newValue }
    }

    public var interactivityType: Swift.String? {
        get { self[first: "interactivityType"] }
        set { self[first: "interactivityType"] = newValue }
    }

    public var isBasedOn: SchemaOrg.Range.IsBasedOn? {
        get { self[first: "isBasedOn"] }
        set { self[first: "isBasedOn"] = newValue }
    }

    public var isBasedOnUrl: SchemaOrg.Range.IsBasedOnUrl? {
        get { self[first: "isBasedOnUrl"] }
        set { self[first: "isBasedOnUrl"] = newValue }
    }

    public var isPartOf: SchemaOrg.Range.IsPartOf? {
        get { self[first: "isPartOf"] }
        set { self[first: "isPartOf"] = newValue }
    }

    public var license: SchemaOrg.Range.License? {
        get { self[first: "license"] }
        set { self[first: "license"] = newValue }
    }

    public var locationCreated: SchemaOrg.Place? {
        get { self[first: "locationCreated"] }
        set { self[first: "locationCreated"] = newValue }
    }

    public var mainEntity: SchemaOrg.Thing? {
        get { self[first: "mainEntity"] }
        set { self[first: "mainEntity"] = newValue }
    }

    public var maintainer: SchemaOrg.Range.Maintainer? {
        get { self[first: "maintainer"] }
        set { self[first: "maintainer"] = newValue }
    }

    public var materialExtent: SchemaOrg.Range.MaterialExtent? {
        get { self[first: "materialExtent"] }
        set { self[first: "materialExtent"] = newValue }
    }

    public var mentions: SchemaOrg.Thing? {
        get { self[first: "mentions"] }
        set { self[first: "mentions"] = newValue }
    }

    public var producer: SchemaOrg.Range.Producer? {
        get { self[first: "producer"] }
        set { self[first: "producer"] = newValue }
    }

    public var publication: SchemaOrg.PublicationEvent? {
        get { self[first: "publication"] }
        set { self[first: "publication"] = newValue }
    }

    public var publisherImprint: SchemaOrg.Organization? {
        get { self[first: "publisherImprint"] }
        set { self[first: "publisherImprint"] = newValue }
    }

    public var recordedAt: SchemaOrg.Event? {
        get { self[first: "recordedAt"] }
        set { self[first: "recordedAt"] = newValue }
    }

    public var releasedEvent: SchemaOrg.PublicationEvent? {
        get { self[first: "releasedEvent"] }
        set { self[first: "releasedEvent"] = newValue }
    }

    public var schemaVersion: SchemaOrg.Range.SchemaVersion? {
        get { self[first: "schemaVersion"] }
        set { self[first: "schemaVersion"] = newValue }
    }

    public var sdDatePublished: ISO_8601.CalendarDate? {
        get { self[first: "sdDatePublished"] }
        set { self[first: "sdDatePublished"] = newValue }
    }

    public var sdLicense: SchemaOrg.Range.SdLicense? {
        get { self[first: "sdLicense"] }
        set { self[first: "sdLicense"] = newValue }
    }

    public var sdPublisher: SchemaOrg.Range.SdPublisher? {
        get { self[first: "sdPublisher"] }
        set { self[first: "sdPublisher"] = newValue }
    }

    public var sourceOrganization: SchemaOrg.Organization? {
        get { self[first: "sourceOrganization"] }
        set { self[first: "sourceOrganization"] = newValue }
    }

    public var spatial: SchemaOrg.Place? {
        get { self[first: "spatial"] }
        set { self[first: "spatial"] = newValue }
    }

    public var spatialCoverage: SchemaOrg.Place? {
        get { self[first: "spatialCoverage"] }
        set { self[first: "spatialCoverage"] = newValue }
    }

    public var temporal: SchemaOrg.Range.Temporal? {
        get { self[first: "temporal"] }
        set { self[first: "temporal"] = newValue }
    }

    public var temporalCoverage: SchemaOrg.Range.TemporalCoverage? {
        get { self[first: "temporalCoverage"] }
        set { self[first: "temporalCoverage"] = newValue }
    }

    public var text: Swift.String? {
        get { self[first: "text"] }
        set { self[first: "text"] = newValue }
    }

    public var thumbnail: SchemaOrg.ImageObject? {
        get { self[first: "thumbnail"] }
        set { self[first: "thumbnail"] = newValue }
    }

    public var thumbnailUrl: RFC_3986.URI? {
        get { self[first: "thumbnailUrl"] }
        set { self[first: "thumbnailUrl"] = newValue }
    }

    public var timeRequired: ISO_8601.Duration? {
        get { self[first: "timeRequired"] }
        set { self[first: "timeRequired"] = newValue }
    }

    public var translationOfWork: SchemaOrg.CreativeWork? {
        get { self[first: "translationOfWork"] }
        set { self[first: "translationOfWork"] = newValue }
    }

    public var usageInfo: SchemaOrg.Range.UsageInfo? {
        get { self[first: "usageInfo"] }
        set { self[first: "usageInfo"] = newValue }
    }

    public var version: SchemaOrg.Range.Version? {
        get { self[first: "version"] }
        set { self[first: "version"] = newValue }
    }

    public var video: SchemaOrg.Range.Video? {
        get { self[first: "video"] }
        set { self[first: "video"] = newValue }
    }

    public var workExample: SchemaOrg.CreativeWork? {
        get { self[first: "workExample"] }
        set { self[first: "workExample"] = newValue }
    }

    public var workTranslation: SchemaOrg.CreativeWork? {
        get { self[first: "workTranslation"] }
        set { self[first: "workTranslation"] = newValue }
    }
}
