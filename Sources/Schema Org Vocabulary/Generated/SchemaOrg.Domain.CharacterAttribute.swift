extension SchemaOrg.Domain {

    public protocol CharacterAttribute: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.CharacterAttribute {

    public var characterAttribute: SchemaOrg.Thing? {
        get { self[first: "characterAttribute"] }
        set { self[first: "characterAttribute"] = newValue }
    }
}
