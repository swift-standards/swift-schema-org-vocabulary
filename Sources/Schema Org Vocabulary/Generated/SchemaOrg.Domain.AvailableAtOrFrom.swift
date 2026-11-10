extension SchemaOrg.Domain {

    public protocol AvailableAtOrFrom: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.AvailableAtOrFrom {

    public var availableAtOrFrom: SchemaOrg.Place? {
        get { self[first: "availableAtOrFrom"] }
        set { self[first: "availableAtOrFrom"] = newValue }
    }
}
