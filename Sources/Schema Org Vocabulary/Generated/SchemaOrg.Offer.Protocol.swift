extension SchemaOrg.Offer {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AcceptedPaymentMethod,
        SchemaOrg.Domain.AdditionalProperty,
        SchemaOrg.Domain.AdvanceBookingRequirement,
        SchemaOrg.Domain.AggregateRating,
        SchemaOrg.Domain.AreaServed,
        SchemaOrg.Domain.Asin,
        SchemaOrg.Domain.Availability,
        SchemaOrg.Domain.AvailabilityEnds,
        SchemaOrg.Domain.AvailabilityStarts,
        SchemaOrg.Domain.AvailableAtOrFrom,
        SchemaOrg.Domain.AvailableDeliveryMethod,
        SchemaOrg.Domain.BusinessFunction,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.DeliveryLeadTime,
        SchemaOrg.Domain.EligibleCustomerType,
        SchemaOrg.Domain.EligibleDuration,
        SchemaOrg.Domain.EligibleQuantity,
        SchemaOrg.Domain.EligibleRegion,
        SchemaOrg.Domain.EligibleTransactionVolume,
        SchemaOrg.Domain.Gtin,
        SchemaOrg.Domain.Gtin12,
        SchemaOrg.Domain.Gtin13,
        SchemaOrg.Domain.Gtin14,
        SchemaOrg.Domain.Gtin8,
        SchemaOrg.Domain.HasAdultConsideration,
        SchemaOrg.Domain.HasDigitalProductPassport,
        SchemaOrg.Domain.HasGS1DigitalLink,
        SchemaOrg.Domain.HasMeasurement,
        SchemaOrg.Domain.HasMerchantReturnPolicy,
        SchemaOrg.Domain.IncludesObject,
        SchemaOrg.Domain.IneligibleRegion,
        SchemaOrg.Domain.InventoryLevel,
        SchemaOrg.Domain.IsFamilyFriendly,
        SchemaOrg.Domain.ItemCondition,
        SchemaOrg.Domain.ItemOffered,
        SchemaOrg.Domain.LeaseLength,
        SchemaOrg.Domain.MobileUrl,
        SchemaOrg.Domain.Mpn,
        SchemaOrg.Domain.Price,
        SchemaOrg.Domain.PriceCurrency,
        SchemaOrg.Domain.PriceSpecification,
        SchemaOrg.Domain.Review,
        SchemaOrg.Domain.Reviews,
        SchemaOrg.Domain.Seller,
        SchemaOrg.Domain.SerialNumber,
        SchemaOrg.Domain.Sku,
        SchemaOrg.Domain.ValidForMemberTier,
        SchemaOrg.Domain.ValidFrom,
        SchemaOrg.Domain.ValidThrough,
        SchemaOrg.Domain.Warranty
    {}
}

extension SchemaOrg.Offer.`Protocol` {

    public var addOn: SchemaOrg.Offer? {
        get { self[first: "addOn"] }
        set { self[first: "addOn"] = newValue }
    }

    public var checkoutPageURLTemplate: Swift.String? {
        get { self[first: "checkoutPageURLTemplate"] }
        set { self[first: "checkoutPageURLTemplate"] = newValue }
    }

    public var itemPopularity: SchemaOrg.Range.ItemPopularity? {
        get { self[first: "itemPopularity"] }
        set { self[first: "itemPopularity"] = newValue }
    }

    public var offeredBy: SchemaOrg.Range.OfferedBy? {
        get { self[first: "offeredBy"] }
        set { self[first: "offeredBy"] = newValue }
    }

    public var priceValidUntil: ISO_8601.CalendarDate? {
        get { self[first: "priceValidUntil"] }
        set { self[first: "priceValidUntil"] = newValue }
    }

    public var shippingDetails: SchemaOrg.OfferShippingDetails? {
        get { self[first: "shippingDetails"] }
        set { self[first: "shippingDetails"] = newValue }
    }
}
