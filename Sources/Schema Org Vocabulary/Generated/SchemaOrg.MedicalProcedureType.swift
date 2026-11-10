extension SchemaOrg {

    public enum MedicalProcedureType: SchemaOrg.Value, Swift.Hashable {

        case noninvasiveProcedure

        case percutaneousProcedure

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalProcedureType {

    public var term: Swift.String? {
        switch self {
        case .noninvasiveProcedure:
            "NoninvasiveProcedure"

        case .percutaneousProcedure:
            "PercutaneousProcedure"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "NoninvasiveProcedure":
            self = .noninvasiveProcedure
            return

        case "PercutaneousProcedure":
            self = .percutaneousProcedure
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .noninvasiveProcedure:
            SchemaOrg.serialize(term: "NoninvasiveProcedure")

        case .percutaneousProcedure:
            SchemaOrg.serialize(term: "PercutaneousProcedure")

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
