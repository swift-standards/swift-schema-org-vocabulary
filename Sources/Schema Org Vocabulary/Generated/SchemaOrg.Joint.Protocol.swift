extension SchemaOrg.Joint {

    public protocol `Protocol`: SchemaOrg.AnatomicalStructure.`Protocol` {}
}

extension SchemaOrg.Joint.`Protocol` {

    public var biomechnicalClass: Swift.String? {
        get { self[first: "biomechnicalClass"] }
        set { self[first: "biomechnicalClass"] = newValue }
    }

    public var functionalClass: SchemaOrg.Range.FunctionalClass? {
        get { self[first: "functionalClass"] }
        set { self[first: "functionalClass"] = newValue }
    }

    public var structuralClass: Swift.String? {
        get { self[first: "structuralClass"] }
        set { self[first: "structuralClass"] = newValue }
    }
}
