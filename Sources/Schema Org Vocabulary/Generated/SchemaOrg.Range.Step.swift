extension SchemaOrg.Range {

    public enum Step: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case creativeWork(SchemaOrg.CreativeWork)

        case howToSection(SchemaOrg.HowToSection)

        case howToStep(SchemaOrg.HowToStep)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.Step {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .creativeWork(let value):
            SchemaOrg.CreativeWork.serialize(value)

        case .howToSection(let value):
            SchemaOrg.HowToSection.serialize(value)

        case .howToStep(let value):
            SchemaOrg.HowToStep.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.HowToSection.deserialize(value) {
            return .howToSection(value)
        }
        if let value = SchemaOrg.HowToStep.deserialize(value) {
            return .howToStep(value)
        }
        if let value = SchemaOrg.CreativeWork.deserialize(value) {
            return .creativeWork(value)
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
