extension SchemaOrg.Range {

    public enum Breadcrumb: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case breadcrumbList(SchemaOrg.BreadcrumbList)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Breadcrumb {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .breadcrumbList(let value):
            SchemaOrg.BreadcrumbList.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.BreadcrumbList.deserialize(value) {
            return .breadcrumbList(value)
        }
        if let value = Swift.String.deserialize(value) {
            return .text(value)
        }
        return nil
    }

    public init(stringLiteral value: Swift.String) {
        self = .text(value)
    }
}
