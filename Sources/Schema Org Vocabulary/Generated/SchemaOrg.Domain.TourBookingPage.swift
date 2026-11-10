extension SchemaOrg.Domain {

    public protocol TourBookingPage: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TourBookingPage {

    public var tourBookingPage: RFC_3986.URI? {
        get { self[first: "tourBookingPage"] }
        set { self[first: "tourBookingPage"] = newValue }
    }
}
