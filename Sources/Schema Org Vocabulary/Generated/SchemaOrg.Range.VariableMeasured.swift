extension SchemaOrg.Range {

    public enum VariableMeasured: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case property(SchemaOrg.Property)

        case propertyValue(SchemaOrg.PropertyValue)

        case statisticalVariable(SchemaOrg.StatisticalVariable)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.VariableMeasured {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .property(let value):
            SchemaOrg.Property.serialize(value)

        case .propertyValue(let value):
            SchemaOrg.PropertyValue.serialize(value)

        case .statisticalVariable(let value):
            SchemaOrg.StatisticalVariable.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.PropertyValue.deserialize(value) {
            return .propertyValue(value)
        }
        if let value = SchemaOrg.StatisticalVariable.deserialize(value) {
            return .statisticalVariable(value)
        }
        if let value = SchemaOrg.Property.deserialize(value) {
            return .property(value)
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
