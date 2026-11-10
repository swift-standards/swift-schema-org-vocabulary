extension SchemaOrg.Range {

    public enum ExperienceRequirements: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case occupationalExperienceRequirements(SchemaOrg.OccupationalExperienceRequirements)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.ExperienceRequirements {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .occupationalExperienceRequirements(let value):
            SchemaOrg.OccupationalExperienceRequirements.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.OccupationalExperienceRequirements.deserialize(value) {
            return .occupationalExperienceRequirements(value)
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
