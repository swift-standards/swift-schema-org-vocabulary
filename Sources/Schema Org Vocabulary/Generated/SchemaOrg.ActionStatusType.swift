extension SchemaOrg {

    public enum ActionStatusType: SchemaOrg.Value, Swift.Hashable {

        case activeActionStatus

        case completedActionStatus

        case failedActionStatus

        case potentialActionStatus

        case instance(Instance)
    }
}

extension SchemaOrg.ActionStatusType {

    public var term: Swift.String? {
        switch self {
        case .activeActionStatus:
            "ActiveActionStatus"

        case .completedActionStatus:
            "CompletedActionStatus"

        case .failedActionStatus:
            "FailedActionStatus"

        case .potentialActionStatus:
            "PotentialActionStatus"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ActiveActionStatus":
            self = .activeActionStatus
            return

        case "CompletedActionStatus":
            self = .completedActionStatus
            return

        case "FailedActionStatus":
            self = .failedActionStatus
            return

        case "PotentialActionStatus":
            self = .potentialActionStatus
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .activeActionStatus:
            SchemaOrg.serialize(term: "ActiveActionStatus")

        case .completedActionStatus:
            SchemaOrg.serialize(term: "CompletedActionStatus")

        case .failedActionStatus:
            SchemaOrg.serialize(term: "FailedActionStatus")

        case .potentialActionStatus:
            SchemaOrg.serialize(term: "PotentialActionStatus")

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
