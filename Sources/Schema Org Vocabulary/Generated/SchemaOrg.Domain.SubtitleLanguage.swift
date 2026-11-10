extension SchemaOrg.Domain {

    public protocol SubtitleLanguage: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.SubtitleLanguage {

    public var subtitleLanguage: SchemaOrg.Range.SubtitleLanguage? {
        get { self[first: "subtitleLanguage"] }
        set { self[first: "subtitleLanguage"] = newValue }
    }
}
