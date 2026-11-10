extension SchemaOrg.Range {

    public enum ArrivalBusStop: SchemaOrg.Value, Swift.Hashable {

        case busStation(SchemaOrg.BusStation)

        case busStop(SchemaOrg.BusStop)
    }
}

extension SchemaOrg.Range.ArrivalBusStop {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .busStation(let value):
            SchemaOrg.BusStation.serialize(value)

        case .busStop(let value):
            SchemaOrg.BusStop.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.BusStation.deserialize(value) {
            return .busStation(value)
        }
        if let value = SchemaOrg.BusStop.deserialize(value) {
            return .busStop(value)
        }
        return nil
    }
}
