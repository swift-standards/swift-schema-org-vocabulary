extension SchemaOrg {

    public enum PriceTypeEnumeration: SchemaOrg.Value, Swift.Hashable {

        case invoicePrice

        case listPrice

        case msrp

        case maximumRetailPrice

        case minimumAdvertisedPrice

        case regularPrice

        case srp

        case salePrice

        case strikethroughPrice

        case instance(Instance)
    }
}

extension SchemaOrg.PriceTypeEnumeration {

    public var term: Swift.String? {
        switch self {
        case .invoicePrice:
            "InvoicePrice"

        case .listPrice:
            "ListPrice"

        case .msrp:
            "MSRP"

        case .maximumRetailPrice:
            "MaximumRetailPrice"

        case .minimumAdvertisedPrice:
            "MinimumAdvertisedPrice"

        case .regularPrice:
            "RegularPrice"

        case .srp:
            "SRP"

        case .salePrice:
            "SalePrice"

        case .strikethroughPrice:
            "StrikethroughPrice"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "InvoicePrice":
            self = .invoicePrice
            return

        case "ListPrice":
            self = .listPrice
            return

        case "MSRP":
            self = .msrp
            return

        case "MaximumRetailPrice":
            self = .maximumRetailPrice
            return

        case "MinimumAdvertisedPrice":
            self = .minimumAdvertisedPrice
            return

        case "RegularPrice":
            self = .regularPrice
            return

        case "SRP":
            self = .srp
            return

        case "SalePrice":
            self = .salePrice
            return

        case "StrikethroughPrice":
            self = .strikethroughPrice
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .invoicePrice:
            SchemaOrg.serialize(term: "InvoicePrice")

        case .listPrice:
            SchemaOrg.serialize(term: "ListPrice")

        case .msrp:
            SchemaOrg.serialize(term: "MSRP")

        case .maximumRetailPrice:
            SchemaOrg.serialize(term: "MaximumRetailPrice")

        case .minimumAdvertisedPrice:
            SchemaOrg.serialize(term: "MinimumAdvertisedPrice")

        case .regularPrice:
            SchemaOrg.serialize(term: "RegularPrice")

        case .srp:
            SchemaOrg.serialize(term: "SRP")

        case .salePrice:
            SchemaOrg.serialize(term: "SalePrice")

        case .strikethroughPrice:
            SchemaOrg.serialize(term: "StrikethroughPrice")

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
