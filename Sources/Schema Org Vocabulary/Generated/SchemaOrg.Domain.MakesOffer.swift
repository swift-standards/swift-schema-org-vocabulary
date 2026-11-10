extension SchemaOrg.Domain {

    public protocol MakesOffer: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.MakesOffer {

    public var makesOffer: SchemaOrg.Offer? {
        get { self[first: "makesOffer"] }
        set { self[first: "makesOffer"] = newValue }
    }
}
