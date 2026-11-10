extension SchemaOrg.Range {

    public enum EducationRequirements: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case educationalOccupationalCredential(SchemaOrg.EducationalOccupationalCredential)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.EducationRequirements {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .educationalOccupationalCredential(let value):
            SchemaOrg.EducationalOccupationalCredential.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.EducationalOccupationalCredential.deserialize(value) {
            return .educationalOccupationalCredential(value)
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
