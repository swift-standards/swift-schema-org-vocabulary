extension SchemaOrg.Range {

    public enum ItemOffered: SchemaOrg.Value, Swift.Hashable {

        case aggregateOffer(SchemaOrg.AggregateOffer)

        case creativeWork(SchemaOrg.CreativeWork)

        case event(SchemaOrg.Event)

        case menuItem(SchemaOrg.MenuItem)

        case product(SchemaOrg.Product)

        case service(SchemaOrg.Service)

        case trip(SchemaOrg.Trip)
    }
}

extension SchemaOrg.Range.ItemOffered {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .aggregateOffer(let value):
            SchemaOrg.AggregateOffer.serialize(value)

        case .creativeWork(let value):
            SchemaOrg.CreativeWork.serialize(value)

        case .event(let value):
            SchemaOrg.Event.serialize(value)

        case .menuItem(let value):
            SchemaOrg.MenuItem.serialize(value)

        case .product(let value):
            SchemaOrg.Product.serialize(value)

        case .service(let value):
            SchemaOrg.Service.serialize(value)

        case .trip(let value):
            SchemaOrg.Trip.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.AggregateOffer.deserialize(value) {
            return .aggregateOffer(value)
        }
        if let value = SchemaOrg.MenuItem.deserialize(value) {
            return .menuItem(value)
        }
        if let value = SchemaOrg.Service.deserialize(value) {
            return .service(value)
        }
        if let value = SchemaOrg.Trip.deserialize(value) {
            return .trip(value)
        }
        if let value = SchemaOrg.CreativeWork.deserialize(value) {
            return .creativeWork(value)
        }
        if let value = SchemaOrg.Event.deserialize(value) {
            return .event(value)
        }
        if let value = SchemaOrg.Product.deserialize(value) {
            return .product(value)
        }
        return nil
    }
}
