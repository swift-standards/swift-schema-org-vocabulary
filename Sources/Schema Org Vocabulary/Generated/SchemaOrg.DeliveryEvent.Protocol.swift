extension SchemaOrg.DeliveryEvent {

    public protocol `Protocol`:
        SchemaOrg.Event.`Protocol`,
        SchemaOrg.Domain.HasDeliveryMethod
    {}
}

extension SchemaOrg.DeliveryEvent.`Protocol` {

    public var accessCode: Swift.String? {
        get { self[first: "accessCode"] }
        set { self[first: "accessCode"] = newValue }
    }

    public var availableFrom: ISO_8601.DateTime? {
        get { self[first: "availableFrom"] }
        set { self[first: "availableFrom"] = newValue }
    }

    public var availableThrough: ISO_8601.DateTime? {
        get { self[first: "availableThrough"] }
        set { self[first: "availableThrough"] = newValue }
    }
}
