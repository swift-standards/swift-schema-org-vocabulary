extension SchemaOrg.Domain {

    public protocol CheckinTime: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CheckinTime {

    public var checkinTime: SchemaOrg.Range.CheckinTime? {
        get { self[first: "checkinTime"] }
        set { self[first: "checkinTime"] = newValue }
    }
}
