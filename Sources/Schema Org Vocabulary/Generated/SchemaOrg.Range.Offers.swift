extension SchemaOrg.Range {

    public enum Offers: SchemaOrg.Value, Swift.Hashable {

        case demand(SchemaOrg.Demand)

        case offer(SchemaOrg.Offer)
    }
}

extension SchemaOrg.Range.Offers {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .demand(let value):
            SchemaOrg.Demand.serialize(value)

        case .offer(let value):
            SchemaOrg.Offer.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.Demand.deserialize(value) {
            return .demand(value)
        }
        if let value = SchemaOrg.Offer.deserialize(value) {
            return .offer(value)
        }
        return nil
    }
}
