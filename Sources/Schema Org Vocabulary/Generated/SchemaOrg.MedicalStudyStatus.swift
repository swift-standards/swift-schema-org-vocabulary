extension SchemaOrg {

    public enum MedicalStudyStatus: SchemaOrg.Value, Swift.Hashable {

        case activeNotRecruiting

        case completed

        case enrollingByInvitation

        case notYetRecruiting

        case recruiting

        case resultsAvailable

        case resultsNotAvailable

        case suspended

        case terminated

        case withdrawn

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalStudyStatus {

    public var term: Swift.String? {
        switch self {
        case .activeNotRecruiting:
            "ActiveNotRecruiting"

        case .completed:
            "Completed"

        case .enrollingByInvitation:
            "EnrollingByInvitation"

        case .notYetRecruiting:
            "NotYetRecruiting"

        case .recruiting:
            "Recruiting"

        case .resultsAvailable:
            "ResultsAvailable"

        case .resultsNotAvailable:
            "ResultsNotAvailable"

        case .suspended:
            "Suspended"

        case .terminated:
            "Terminated"

        case .withdrawn:
            "Withdrawn"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ActiveNotRecruiting":
            self = .activeNotRecruiting
            return

        case "Completed":
            self = .completed
            return

        case "EnrollingByInvitation":
            self = .enrollingByInvitation
            return

        case "NotYetRecruiting":
            self = .notYetRecruiting
            return

        case "Recruiting":
            self = .recruiting
            return

        case "ResultsAvailable":
            self = .resultsAvailable
            return

        case "ResultsNotAvailable":
            self = .resultsNotAvailable
            return

        case "Suspended":
            self = .suspended
            return

        case "Terminated":
            self = .terminated
            return

        case "Withdrawn":
            self = .withdrawn
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .activeNotRecruiting:
            SchemaOrg.serialize(term: "ActiveNotRecruiting")

        case .completed:
            SchemaOrg.serialize(term: "Completed")

        case .enrollingByInvitation:
            SchemaOrg.serialize(term: "EnrollingByInvitation")

        case .notYetRecruiting:
            SchemaOrg.serialize(term: "NotYetRecruiting")

        case .recruiting:
            SchemaOrg.serialize(term: "Recruiting")

        case .resultsAvailable:
            SchemaOrg.serialize(term: "ResultsAvailable")

        case .resultsNotAvailable:
            SchemaOrg.serialize(term: "ResultsNotAvailable")

        case .suspended:
            SchemaOrg.serialize(term: "Suspended")

        case .terminated:
            SchemaOrg.serialize(term: "Terminated")

        case .withdrawn:
            SchemaOrg.serialize(term: "Withdrawn")

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
