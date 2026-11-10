extension SchemaOrg.ParcelDelivery {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Carrier,
        SchemaOrg.Domain.HasDeliveryMethod,
        SchemaOrg.Domain.Provider
    {}
}

extension SchemaOrg.ParcelDelivery.`Protocol` {

    public var deliveryAddress: SchemaOrg.PostalAddress? {
        get { self[first: "deliveryAddress"] }
        set { self[first: "deliveryAddress"] = newValue }
    }

    public var deliveryStatus: SchemaOrg.DeliveryEvent? {
        get { self[first: "deliveryStatus"] }
        set { self[first: "deliveryStatus"] = newValue }
    }

    public var expectedArrivalFrom: SchemaOrg.Range.ExpectedArrivalFrom? {
        get { self[first: "expectedArrivalFrom"] }
        set { self[first: "expectedArrivalFrom"] = newValue }
    }

    public var expectedArrivalUntil: SchemaOrg.Range.ExpectedArrivalUntil? {
        get { self[first: "expectedArrivalUntil"] }
        set { self[first: "expectedArrivalUntil"] = newValue }
    }

    public var itemShipped: SchemaOrg.Product? {
        get { self[first: "itemShipped"] }
        set { self[first: "itemShipped"] = newValue }
    }

    public var originAddress: SchemaOrg.PostalAddress? {
        get { self[first: "originAddress"] }
        set { self[first: "originAddress"] = newValue }
    }

    public var partOfOrder: SchemaOrg.Order? {
        get { self[first: "partOfOrder"] }
        set { self[first: "partOfOrder"] = newValue }
    }

    public var trackingNumber: Swift.String? {
        get { self[first: "trackingNumber"] }
        set { self[first: "trackingNumber"] = newValue }
    }

    public var trackingUrl: RFC_3986.URI? {
        get { self[first: "trackingUrl"] }
        set { self[first: "trackingUrl"] = newValue }
    }
}
