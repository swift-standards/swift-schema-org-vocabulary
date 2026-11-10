extension SchemaOrg {

    public enum MapCategoryType: SchemaOrg.Value, Swift.Hashable {

        case parkingMap

        case seatingMap

        case transitMap

        case venueMap

        case instance(Instance)
    }
}

extension SchemaOrg.MapCategoryType {

    public var term: Swift.String? {
        switch self {
        case .parkingMap:
            "ParkingMap"

        case .seatingMap:
            "SeatingMap"

        case .transitMap:
            "TransitMap"

        case .venueMap:
            "VenueMap"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "ParkingMap":
            self = .parkingMap
            return

        case "SeatingMap":
            self = .seatingMap
            return

        case "TransitMap":
            self = .transitMap
            return

        case "VenueMap":
            self = .venueMap
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .parkingMap:
            SchemaOrg.serialize(term: "ParkingMap")

        case .seatingMap:
            SchemaOrg.serialize(term: "SeatingMap")

        case .transitMap:
            SchemaOrg.serialize(term: "TransitMap")

        case .venueMap:
            SchemaOrg.serialize(term: "VenueMap")

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
