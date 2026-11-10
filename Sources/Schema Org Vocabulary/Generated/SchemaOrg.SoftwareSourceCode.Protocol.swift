extension SchemaOrg.SoftwareSourceCode {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.RuntimePlatform
    {}
}

extension SchemaOrg.SoftwareSourceCode.`Protocol` {

    public var codeRepository: RFC_3986.URI? {
        get { self[first: "codeRepository"] }
        set { self[first: "codeRepository"] = newValue }
    }

    public var codeSampleType: Swift.String? {
        get { self[first: "codeSampleType"] }
        set { self[first: "codeSampleType"] = newValue }
    }

    public var programmingLanguage: SchemaOrg.Range.ProgrammingLanguage? {
        get { self[first: "programmingLanguage"] }
        set { self[first: "programmingLanguage"] = newValue }
    }

    public var runtime: Swift.String? {
        get { self[first: "runtime"] }
        set { self[first: "runtime"] = newValue }
    }

    public var sampleType: Swift.String? {
        get { self[first: "sampleType"] }
        set { self[first: "sampleType"] = newValue }
    }

    public var targetProduct: SchemaOrg.SoftwareApplication? {
        get { self[first: "targetProduct"] }
        set { self[first: "targetProduct"] = newValue }
    }
}
