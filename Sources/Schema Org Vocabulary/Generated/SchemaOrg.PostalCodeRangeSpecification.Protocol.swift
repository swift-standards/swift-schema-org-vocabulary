extension SchemaOrg.PostalCodeRangeSpecification {

    public protocol `Protocol`: SchemaOrg.StructuredValue.`Protocol` {}
}

extension SchemaOrg.PostalCodeRangeSpecification.`Protocol` {

    public var postalCodeBegin: Swift.String? {
        get { self[first: "postalCodeBegin"] }
        set { self[first: "postalCodeBegin"] = newValue }
    }

    public var postalCodeEnd: Swift.String? {
        get { self[first: "postalCodeEnd"] }
        set { self[first: "postalCodeEnd"] = newValue }
    }
}
