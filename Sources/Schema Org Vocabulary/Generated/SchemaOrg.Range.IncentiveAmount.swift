extension SchemaOrg.Range {

    public enum IncentiveAmount: SchemaOrg.Value, Swift.Hashable {

        case loanOrCredit(SchemaOrg.LoanOrCredit)

        case quantitativeValue(SchemaOrg.QuantitativeValue)

        case unitPriceSpecification(SchemaOrg.UnitPriceSpecification)
    }
}

extension SchemaOrg.Range.IncentiveAmount {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .loanOrCredit(let value):
            SchemaOrg.LoanOrCredit.serialize(value)

        case .quantitativeValue(let value):
            SchemaOrg.QuantitativeValue.serialize(value)

        case .unitPriceSpecification(let value):
            SchemaOrg.UnitPriceSpecification.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.LoanOrCredit.deserialize(value) {
            return .loanOrCredit(value)
        }
        if let value = SchemaOrg.UnitPriceSpecification.deserialize(value) {
            return .unitPriceSpecification(value)
        }
        if let value = SchemaOrg.QuantitativeValue.deserialize(value) {
            return .quantitativeValue(value)
        }
        return nil
    }
}
