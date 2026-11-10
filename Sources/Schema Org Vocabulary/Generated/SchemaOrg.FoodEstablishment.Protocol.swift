extension SchemaOrg.FoodEstablishment {

    public protocol `Protocol`:
        SchemaOrg.LocalBusiness.`Protocol`,
        SchemaOrg.Domain.StarRating
    {}
}

extension SchemaOrg.FoodEstablishment.`Protocol` {

    public var acceptsReservations: SchemaOrg.Range.AcceptsReservations? {
        get { self[first: "acceptsReservations"] }
        set { self[first: "acceptsReservations"] = newValue }
    }

    public var hasMenu: SchemaOrg.Range.HasMenu? {
        get { self[first: "hasMenu"] }
        set { self[first: "hasMenu"] = newValue }
    }

    public var menu: SchemaOrg.Range.Menu? {
        get { self[first: "menu"] }
        set { self[first: "menu"] = newValue }
    }

    public var servesCuisine: Swift.String? {
        get { self[first: "servesCuisine"] }
        set { self[first: "servesCuisine"] = newValue }
    }
}
