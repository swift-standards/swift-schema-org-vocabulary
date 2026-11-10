extension SchemaOrg.Quotation {

    public protocol `Protocol`: SchemaOrg.CreativeWork.`Protocol` {}
}

extension SchemaOrg.Quotation.`Protocol` {

    public var spokenByCharacter: SchemaOrg.Range.SpokenByCharacter? {
        get { self[first: "spokenByCharacter"] }
        set { self[first: "spokenByCharacter"] = newValue }
    }
}
