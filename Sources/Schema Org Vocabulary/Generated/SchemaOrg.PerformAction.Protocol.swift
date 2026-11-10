extension SchemaOrg.PerformAction {

    public protocol `Protocol`: SchemaOrg.PlayAction.`Protocol` {}
}

extension SchemaOrg.PerformAction.`Protocol` {

    public var entertainmentBusiness: SchemaOrg.EntertainmentBusiness? {
        get { self[first: "entertainmentBusiness"] }
        set { self[first: "entertainmentBusiness"] = newValue }
    }
}
