extension SchemaOrg.Domain {

    public protocol TypeOfGood: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.TypeOfGood {

    public var typeOfGood: SchemaOrg.Range.TypeOfGood? {
        get { self[first: "typeOfGood"] }
        set { self[first: "typeOfGood"] = newValue }
    }
}
