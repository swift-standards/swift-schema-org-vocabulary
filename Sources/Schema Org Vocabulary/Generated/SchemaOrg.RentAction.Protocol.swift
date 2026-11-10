extension SchemaOrg.RentAction {

    public protocol `Protocol`: SchemaOrg.TradeAction.`Protocol` {}
}

extension SchemaOrg.RentAction.`Protocol` {

    public var landlord: SchemaOrg.Range.Landlord? {
        get { self[first: "landlord"] }
        set { self[first: "landlord"] = newValue }
    }

    public var realEstateAgent: SchemaOrg.RealEstateAgent? {
        get { self[first: "realEstateAgent"] }
        set { self[first: "realEstateAgent"] = newValue }
    }
}
