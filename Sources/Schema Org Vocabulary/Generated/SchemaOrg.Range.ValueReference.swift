extension SchemaOrg.Range {

    public enum ValueReference: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case definedTerm(SchemaOrg.DefinedTerm)

        case enumeration(SchemaOrg.Enumeration)

        case measurementTypeEnumeration(SchemaOrg.MeasurementTypeEnumeration)

        case propertyValue(SchemaOrg.PropertyValue)

        case qualitativeValue(SchemaOrg.QualitativeValue)

        case quantitativeValue(SchemaOrg.QuantitativeValue)

        case structuredValue(SchemaOrg.StructuredValue)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ValueReference {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .definedTerm(let value):
            SchemaOrg.DefinedTerm.serialize(value)

        case .enumeration(let value):
            SchemaOrg.Enumeration.serialize(value)

        case .measurementTypeEnumeration(let value):
            SchemaOrg.MeasurementTypeEnumeration.serialize(value)

        case .propertyValue(let value):
            SchemaOrg.PropertyValue.serialize(value)

        case .qualitativeValue(let value):
            SchemaOrg.QualitativeValue.serialize(value)

        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)

        case .structuredValue(let value):
            SchemaOrg.StructuredValue.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.MeasurementTypeEnumeration.deserialize(value) {
            return .measurementTypeEnumeration(value)
        }
        if let value = SchemaOrg.QualitativeValue.deserialize(value) {
            return .qualitativeValue(value)
        }
        if let value = SchemaOrg.Enumeration.deserialize(value) {
            return .enumeration(value)
        }
        if let value = SchemaOrg.PropertyValue.deserialize(value) {
            return .propertyValue(value)
        }
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
        }
        if let value = SchemaOrg.DefinedTerm.deserialize(value) {
            return .definedTerm(value)
        }
        if let value = SchemaOrg.StructuredValue.deserialize(value) {
            return .structuredValue(value)
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
