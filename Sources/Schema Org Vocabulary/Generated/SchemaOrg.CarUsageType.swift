extension SchemaOrg {

    public enum CarUsageType: SchemaOrg.Value, Swift.Hashable {

        case drivingSchoolVehicleUsage

        case rentalVehicleUsage

        case taxiVehicleUsage

        case instance(Instance)
    }
}

extension SchemaOrg.CarUsageType {

    public var term: Swift.String? {
        switch self {
        case .drivingSchoolVehicleUsage:
            "DrivingSchoolVehicleUsage"

        case .rentalVehicleUsage:
            "RentalVehicleUsage"

        case .taxiVehicleUsage:
            "TaxiVehicleUsage"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "DrivingSchoolVehicleUsage":
            self = .drivingSchoolVehicleUsage
            return

        case "RentalVehicleUsage":
            self = .rentalVehicleUsage
            return

        case "TaxiVehicleUsage":
            self = .taxiVehicleUsage
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .drivingSchoolVehicleUsage:
            SchemaOrg.serialize(term: "DrivingSchoolVehicleUsage")

        case .rentalVehicleUsage:
            SchemaOrg.serialize(term: "RentalVehicleUsage")

        case .taxiVehicleUsage:
            SchemaOrg.serialize(term: "TaxiVehicleUsage")

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
