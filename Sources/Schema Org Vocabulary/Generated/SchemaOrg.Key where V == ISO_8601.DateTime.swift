extension SchemaOrg.Key where V == ISO_8601.DateTime {

    public static var availableFrom: Self {
        Self("availableFrom")
    }

    public static var availableThrough: Self {
        Self("availableThrough")
    }

    public static var bookingTime: Self {
        Self("bookingTime")
    }

    public static var contentReferenceTime: Self {
        Self("contentReferenceTime")
    }

    public static var coverageEndTime: Self {
        Self("coverageEndTime")
    }

    public static var coverageStartTime: Self {
        Self("coverageStartTime")
    }

    public static var datasetTimeInterval: Self {
        Self("datasetTimeInterval")
    }

    public static var dateReceived: Self {
        Self("dateReceived")
    }

    public static var dateSent: Self {
        Self("dateSent")
    }

    public static var dropoffTime: Self {
        Self("dropoffTime")
    }

    public static var modifiedTime: Self {
        Self("modifiedTime")
    }

    public static var ownedFrom: Self {
        Self("ownedFrom")
    }

    public static var ownedThrough: Self {
        Self("ownedThrough")
    }

    public static var paymentDue: Self {
        Self("paymentDue")
    }

    public static var pickupTime: Self {
        Self("pickupTime")
    }

    public static var timestamp: Self {
        Self("timestamp")
    }

    public static var webCheckinTime: Self {
        Self("webCheckinTime")
    }
}
