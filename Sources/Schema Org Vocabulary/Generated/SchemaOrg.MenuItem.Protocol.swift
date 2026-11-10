extension SchemaOrg.MenuItem {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Nutrition,
        SchemaOrg.Domain.Offers,
        SchemaOrg.Domain.SuitableForDiet
    {}
}

extension SchemaOrg.MenuItem.`Protocol` {

    public var menuAddOn: SchemaOrg.Range.MenuAddOn? {
        get { self[first: "menuAddOn"] }
        set { self[first: "menuAddOn"] = newValue }
    }
}
