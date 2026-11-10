extension SchemaOrg.Range {

    public enum MenuAddOn: SchemaOrg.Value, Swift.Hashable {

        case menuItem(SchemaOrg.MenuItem)

        case menuSection(SchemaOrg.MenuSection)
    }
}

extension SchemaOrg.Range.MenuAddOn {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .menuItem(let value):
            SchemaOrg.MenuItem.serialize(value)

        case .menuSection(let value):
            SchemaOrg.MenuSection.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MenuItem.deserialize(value) {
            return .menuItem(value)
        }
        if let value = SchemaOrg.MenuSection.deserialize(value) {
            return .menuSection(value)
        }
        return nil
    }
}
