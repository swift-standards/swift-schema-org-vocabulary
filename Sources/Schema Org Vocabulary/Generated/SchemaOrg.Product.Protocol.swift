extension SchemaOrg.Product {

    public protocol `Protocol`:
        SchemaOrg.Thing.`Protocol`,
        SchemaOrg.Domain.AdditionalProperty,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.Asin,
        SchemaOrg.Domain.Audience,
        SchemaOrg.Domain.AuthorizedRepresentative,
        SchemaOrg.Domain.Award,
        SchemaOrg.Domain.Awards,
        SchemaOrg.Domain.Brand,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.CountryOfOrigin,
        SchemaOrg.Domain.Depth,
        SchemaOrg.Domain.DisplayLocation,
        SchemaOrg.Domain.Funding,
        SchemaOrg.Domain.Gtin,
        SchemaOrg.Domain.Gtin12,
        SchemaOrg.Domain.Gtin13,
        SchemaOrg.Domain.Gtin14,
        SchemaOrg.Domain.Gtin8,
        SchemaOrg.Domain.HasAdultConsideration,
        SchemaOrg.Domain.HasCertification,
        SchemaOrg.Domain.HasDigitalProductPassport,
        SchemaOrg.Domain.HasGS1DigitalLink,
        SchemaOrg.Domain.HasMeasurement,
        SchemaOrg.Domain.HasMerchantReturnPolicy,
        SchemaOrg.Domain.HasProductReturnPolicy,
        SchemaOrg.Domain.Height,
        SchemaOrg.Domain.IsFamilyFriendly,
        SchemaOrg.Domain.IsRelatedTo,
        SchemaOrg.Domain.IsSimilarTo,
        SchemaOrg.Domain.IsVariantOf,
        SchemaOrg.Domain.ItemCondition,
        SchemaOrg.Domain.Keywords,
        SchemaOrg.Domain.Logo,
        SchemaOrg.Domain.Material,
        SchemaOrg.Domain.MobileUrl,
        SchemaOrg.Domain.Mpn,
        SchemaOrg.Domain.NegativeNotes,
        SchemaOrg.Domain.Offers,
        SchemaOrg.Domain.Pattern,
        SchemaOrg.Domain.PositiveNotes,
        SchemaOrg.Domain.ProductionDate,
        SchemaOrg.Domain.PurchaseDate,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.Reviews,
        SchemaOrg.Domain.Size,
        SchemaOrg.Domain.Sku,
        SchemaOrg.Domain.Slogan,
        SchemaOrg.Domain.Weight,
        SchemaOrg.Domain.Width
    {}
}

extension SchemaOrg.Product.`Protocol` {

    public var color: Swift.String? {
        get { self[first: "color"] }
        set { self[first: "color"] = newValue }
    }

    public var colorSwatch: SchemaOrg.Range.ColorSwatch? {
        get { self[first: "colorSwatch"] }
        set { self[first: "colorSwatch"] = newValue }
    }

    public var consumerNotice: SchemaOrg.Range.ConsumerNotice? {
        get { self[first: "consumerNotice"] }
        set { self[first: "consumerNotice"] = newValue }
    }

    public var countryOfAssembly: Swift.String? {
        get { self[first: "countryOfAssembly"] }
        set { self[first: "countryOfAssembly"] = newValue }
    }

    public var countryOfLastProcessing: Swift.String? {
        get { self[first: "countryOfLastProcessing"] }
        set { self[first: "countryOfLastProcessing"] = newValue }
    }

    public var hasEnergyConsumptionDetails: SchemaOrg.EnergyConsumptionDetails? {
        get { self[first: "hasEnergyConsumptionDetails"] }
        set { self[first: "hasEnergyConsumptionDetails"] = newValue }
    }

    public var importer: SchemaOrg.Range.Importer? {
        get { self[first: "importer"] }
        set { self[first: "importer"] = newValue }
    }

    public var inProductGroupWithID: Swift.String? {
        get { self[first: "inProductGroupWithID"] }
        set { self[first: "inProductGroupWithID"] = newValue }
    }

    public var isAccessoryOrSparePartFor: SchemaOrg.Product? {
        get { self[first: "isAccessoryOrSparePartFor"] }
        set { self[first: "isAccessoryOrSparePartFor"] = newValue }
    }

    public var isConsumableFor: SchemaOrg.Product? {
        get { self[first: "isConsumableFor"] }
        set { self[first: "isConsumableFor"] = newValue }
    }

    public var isOftenBoughtWith: SchemaOrg.Product? {
        get { self[first: "isOftenBoughtWith"] }
        set { self[first: "isOftenBoughtWith"] = newValue }
    }

    public var manufacturer: SchemaOrg.Organization? {
        get { self[first: "manufacturer"] }
        set { self[first: "manufacturer"] = newValue }
    }

    public var model: SchemaOrg.Range.Model? {
        get { self[first: "model"] }
        set { self[first: "model"] = newValue }
    }

    public var nsn: Swift.String? {
        get { self[first: "nsn"] }
        set { self[first: "nsn"] = newValue }
    }

    public var productID: Swift.String? {
        get { self[first: "productID"] }
        set { self[first: "productID"] = newValue }
    }

    public var recycledContentPercentage: Swift.Double? {
        get { self[first: "recycledContentPercentage"] }
        set { self[first: "recycledContentPercentage"] = newValue }
    }

    public var releaseDate: ISO_8601.CalendarDate? {
        get { self[first: "releaseDate"] }
        set { self[first: "releaseDate"] = newValue }
    }

    public var specification: SchemaOrg.PropertyValue? {
        get { self[first: "specification"] }
        set { self[first: "specification"] = newValue }
    }

    public var substanceOfConcern: SchemaOrg.Range.SubstanceOfConcern? {
        get { self[first: "substanceOfConcern"] }
        set { self[first: "substanceOfConcern"] = newValue }
    }
}
