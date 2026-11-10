extension SchemaOrg.Range {

    public enum Location: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case place(SchemaOrg.Place)

        case postalAddress(SchemaOrg.PostalAddress)

        case text(Swift.String)

        case virtualLocation(SchemaOrg.VirtualLocation)
    }
}

extension SchemaOrg.Range.Location {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .place(let value):
            SchemaOrg.Place.serialize(value)

        case .postalAddress(let value):
            SchemaOrg.PostalAddress.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)

        case .virtualLocation(let value):
            SchemaOrg.VirtualLocation.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PostalAddress.deserialize(value) {
            return .postalAddress(value)
        }
        if let value = SchemaOrg.VirtualLocation.deserialize(value) {
            return .virtualLocation(value)
        }
        if let value = SchemaOrg.Place.deserialize(value) {
            return .place(value)
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
