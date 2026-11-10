extension SchemaOrg.Range {

    public enum CoursePrerequisites: SchemaOrg.Value, Swift.Hashable, Swift.ExpressibleByStringLiteral {

        case alignmentObject(SchemaOrg.AlignmentObject)

        case course(SchemaOrg.Course)

        case text(Swift.String)
    }
}

extension SchemaOrg.Range.CoursePrerequisites {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .alignmentObject(let value):
            SchemaOrg.AlignmentObject.serialize(value)

        case .course(let value):
            SchemaOrg.Course.serialize(value)

        case .text(let value):
            Swift.String.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Course.deserialize(value) {
            return .course(value)
        }
        if let value = SchemaOrg.AlignmentObject.deserialize(value) {
            return .alignmentObject(value)
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
