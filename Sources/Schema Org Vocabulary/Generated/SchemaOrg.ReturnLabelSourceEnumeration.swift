extension SchemaOrg {

    public enum ReturnLabelSourceEnumeration: SchemaOrg.Value, Swift.Hashable {

        case returnLabelCustomerResponsibility

        case returnLabelDownloadAndPrint

        case returnLabelInBox

        case instance(Instance)
    }
}

extension SchemaOrg.ReturnLabelSourceEnumeration {

    public var term: Swift.String? {
        switch self {
        case .returnLabelCustomerResponsibility:
            "ReturnLabelCustomerResponsibility"

        case .returnLabelDownloadAndPrint:
            "ReturnLabelDownloadAndPrint"

        case .returnLabelInBox:
            "ReturnLabelInBox"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ReturnLabelCustomerResponsibility":
            self = .returnLabelCustomerResponsibility
            return

        case "ReturnLabelDownloadAndPrint":
            self = .returnLabelDownloadAndPrint
            return

        case "ReturnLabelInBox":
            self = .returnLabelInBox
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .returnLabelCustomerResponsibility:
            SchemaOrg.serialize(term: "ReturnLabelCustomerResponsibility")

        case .returnLabelDownloadAndPrint:
            SchemaOrg.serialize(term: "ReturnLabelDownloadAndPrint")

        case .returnLabelInBox:
            SchemaOrg.serialize(term: "ReturnLabelInBox")

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
