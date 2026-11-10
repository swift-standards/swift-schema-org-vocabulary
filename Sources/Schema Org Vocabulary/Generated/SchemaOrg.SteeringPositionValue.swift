extension SchemaOrg {

    public enum SteeringPositionValue: SchemaOrg.Value, Swift.Hashable {

        case leftHandDriving

        case rightHandDriving

        case instance(Instance)
    }
}

extension SchemaOrg.SteeringPositionValue {

    public var term: Swift.String? {
        switch self {
        case .leftHandDriving:
            "LeftHandDriving"

        case .rightHandDriving:
            "RightHandDriving"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "LeftHandDriving":
            self = .leftHandDriving
            return

        case "RightHandDriving":
            self = .rightHandDriving
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .leftHandDriving:
            SchemaOrg.serialize(term: "LeftHandDriving")

        case .rightHandDriving:
            SchemaOrg.serialize(term: "RightHandDriving")

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
