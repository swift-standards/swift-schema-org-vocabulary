extension SchemaOrg {

    public enum ItemListOrderType: SchemaOrg.Value, Swift.Hashable {

        case itemListOrderAscending

        case itemListOrderDescending

        case itemListUnordered

        case instance(Instance)
    }
}

extension SchemaOrg.ItemListOrderType {

    public var term: Swift.String? {
        switch self {
        case .itemListOrderAscending:
            "ItemListOrderAscending"

        case .itemListOrderDescending:
            "ItemListOrderDescending"

        case .itemListUnordered:
            "ItemListUnordered"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ItemListOrderAscending":
            self = .itemListOrderAscending
            return

        case "ItemListOrderDescending":
            self = .itemListOrderDescending
            return

        case "ItemListUnordered":
            self = .itemListUnordered
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .itemListOrderAscending:
            SchemaOrg.serialize(term: "ItemListOrderAscending")

        case .itemListOrderDescending:
            SchemaOrg.serialize(term: "ItemListOrderDescending")

        case .itemListUnordered:
            SchemaOrg.serialize(term: "ItemListUnordered")

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
