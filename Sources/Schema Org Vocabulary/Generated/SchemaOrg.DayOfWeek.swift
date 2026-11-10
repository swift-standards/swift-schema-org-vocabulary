extension SchemaOrg {

    public enum DayOfWeek: SchemaOrg.Value, Swift.Hashable {

        case friday

        case monday

        case publicHolidays

        case saturday

        case sunday

        case thursday

        case tuesday

        case wednesday

        case instance(Instance)
    }
}

extension SchemaOrg.DayOfWeek {

    public var term: Swift.String? {
        switch self {
        case .friday:
            "Friday"

        case .monday:
            "Monday"

        case .publicHolidays:
            "PublicHolidays"

        case .saturday:
            "Saturday"

        case .sunday:
            "Sunday"

        case .thursday:
            "Thursday"

        case .tuesday:
            "Tuesday"

        case .wednesday:
            "Wednesday"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "Friday":
            self = .friday
            return

        case "Monday":
            self = .monday
            return

        case "PublicHolidays":
            self = .publicHolidays
            return

        case "Saturday":
            self = .saturday
            return

        case "Sunday":
            self = .sunday
            return

        case "Thursday":
            self = .thursday
            return

        case "Tuesday":
            self = .tuesday
            return

        case "Wednesday":
            self = .wednesday
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .friday:
            SchemaOrg.serialize(term: "Friday")

        case .monday:
            SchemaOrg.serialize(term: "Monday")

        case .publicHolidays:
            SchemaOrg.serialize(term: "PublicHolidays")

        case .saturday:
            SchemaOrg.serialize(term: "Saturday")

        case .sunday:
            SchemaOrg.serialize(term: "Sunday")

        case .thursday:
            SchemaOrg.serialize(term: "Thursday")

        case .tuesday:
            SchemaOrg.serialize(term: "Tuesday")

        case .wednesday:
            SchemaOrg.serialize(term: "Wednesday")

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
