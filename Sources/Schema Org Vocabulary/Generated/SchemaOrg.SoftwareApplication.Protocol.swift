extension SchemaOrg.SoftwareApplication {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.RuntimePlatform
    {}
}

extension SchemaOrg.SoftwareApplication.`Protocol` {

    public var applicationCategory: SchemaOrg.Range.ApplicationCategory? {
        get { self[first: "applicationCategory"] }
        set { self[first: "applicationCategory"] = newValue }
    }

    public var applicationSubCategory: SchemaOrg.Range.ApplicationSubCategory? {
        get { self[first: "applicationSubCategory"] }
        set { self[first: "applicationSubCategory"] = newValue }
    }

    public var applicationSuite: Swift.String? {
        get { self[first: "applicationSuite"] }
        set { self[first: "applicationSuite"] = newValue }
    }

    public var availableOnDevice: Swift.String? {
        get { self[first: "availableOnDevice"] }
        set { self[first: "availableOnDevice"] = newValue }
    }

    public var countriesNotSupported: Swift.String? {
        get { self[first: "countriesNotSupported"] }
        set { self[first: "countriesNotSupported"] = newValue }
    }

    public var countriesSupported: Swift.String? {
        get { self[first: "countriesSupported"] }
        set { self[first: "countriesSupported"] = newValue }
    }

    public var device: Swift.String? {
        get { self[first: "device"] }
        set { self[first: "device"] = newValue }
    }

    public var downloadUrl: RFC_3986.URI? {
        get { self[first: "downloadUrl"] }
        set { self[first: "downloadUrl"] = newValue }
    }

    public var featureList: SchemaOrg.Range.FeatureList? {
        get { self[first: "featureList"] }
        set { self[first: "featureList"] = newValue }
    }

    public var fileSize: Swift.String? {
        get { self[first: "fileSize"] }
        set { self[first: "fileSize"] = newValue }
    }

    public var installUrl: RFC_3986.URI? {
        get { self[first: "installUrl"] }
        set { self[first: "installUrl"] = newValue }
    }

    public var memoryRequirements: SchemaOrg.Range.MemoryRequirements? {
        get { self[first: "memoryRequirements"] }
        set { self[first: "memoryRequirements"] = newValue }
    }

    public var operatingSystem: SchemaOrg.Range.OperatingSystem? {
        get { self[first: "operatingSystem"] }
        set { self[first: "operatingSystem"] = newValue }
    }

    public var permissions: Swift.String? {
        get { self[first: "permissions"] }
        set { self[first: "permissions"] = newValue }
    }

    public var processorRequirements: Swift.String? {
        get { self[first: "processorRequirements"] }
        set { self[first: "processorRequirements"] = newValue }
    }

    public var releaseNotes: SchemaOrg.Range.ReleaseNotes? {
        get { self[first: "releaseNotes"] }
        set { self[first: "releaseNotes"] = newValue }
    }

    public var requirements: SchemaOrg.Range.Requirements? {
        get { self[first: "requirements"] }
        set { self[first: "requirements"] = newValue }
    }

    public var screenshot: SchemaOrg.Range.Screenshot? {
        get { self[first: "screenshot"] }
        set { self[first: "screenshot"] = newValue }
    }

    public var softwareAddOn: SchemaOrg.SoftwareApplication? {
        get { self[first: "softwareAddOn"] }
        set { self[first: "softwareAddOn"] = newValue }
    }

    public var softwareHelp: SchemaOrg.CreativeWork? {
        get { self[first: "softwareHelp"] }
        set { self[first: "softwareHelp"] = newValue }
    }

    public var softwareRequirements: SchemaOrg.Range.SoftwareRequirements? {
        get { self[first: "softwareRequirements"] }
        set { self[first: "softwareRequirements"] = newValue }
    }

    public var softwareVersion: Swift.String? {
        get { self[first: "softwareVersion"] }
        set { self[first: "softwareVersion"] = newValue }
    }

    public var storageRequirements: SchemaOrg.Range.StorageRequirements? {
        get { self[first: "storageRequirements"] }
        set { self[first: "storageRequirements"] = newValue }
    }

    public var supportingData: SchemaOrg.DataFeed? {
        get { self[first: "supportingData"] }
        set { self[first: "supportingData"] = newValue }
    }
}
