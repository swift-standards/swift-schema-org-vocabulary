extension SchemaOrg.Domain {

    public protocol AvailableService: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AvailableService {

    public var availableService: SchemaOrg.Range.AvailableService? {
        get { self[first: "availableService"] }
        set { self[first: "availableService"] = newValue }
    }
}
