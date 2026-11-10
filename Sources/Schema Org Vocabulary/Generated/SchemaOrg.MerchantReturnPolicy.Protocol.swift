extension SchemaOrg.MerchantReturnPolicy {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.AdditionalProperty,
        SchemaOrg.Domain.ItemCondition,
        SchemaOrg.Domain.MerchantReturnDays,
        SchemaOrg.Domain.RefundType,
        SchemaOrg.Domain.RestockingFee,
        SchemaOrg.Domain.ReturnFees,
        SchemaOrg.Domain.ReturnMethod,
        SchemaOrg.Domain.ReturnPolicyCategory,
        SchemaOrg.Domain.ReturnShippingFeesAmount,
        SchemaOrg.Domain.ValidForMemberTier
    {}
}

extension SchemaOrg.MerchantReturnPolicy.`Protocol` {

    public var applicableCountry: SchemaOrg.Range.ApplicableCountry? {
        get { self[first: "applicableCountry"] }
        set { self[first: "applicableCountry"] = newValue }
    }

    public var customerRemorseReturnFees: SchemaOrg.ReturnFeesEnumeration? {
        get { self[first: "customerRemorseReturnFees"] }
        set { self[first: "customerRemorseReturnFees"] = newValue }
    }

    public var customerRemorseReturnLabelSource: SchemaOrg.ReturnLabelSourceEnumeration? {
        get { self[first: "customerRemorseReturnLabelSource"] }
        set { self[first: "customerRemorseReturnLabelSource"] = newValue }
    }

    public var customerRemorseReturnShippingFeesAmount: SchemaOrg.MonetaryAmount? {
        get { self[first: "customerRemorseReturnShippingFeesAmount"] }
        set { self[first: "customerRemorseReturnShippingFeesAmount"] = newValue }
    }

    public var inStoreReturnsOffered: Swift.Bool? {
        get { self[first: "inStoreReturnsOffered"] }
        set { self[first: "inStoreReturnsOffered"] = newValue }
    }

    public var itemDefectReturnFees: SchemaOrg.ReturnFeesEnumeration? {
        get { self[first: "itemDefectReturnFees"] }
        set { self[first: "itemDefectReturnFees"] = newValue }
    }

    public var itemDefectReturnLabelSource: SchemaOrg.ReturnLabelSourceEnumeration? {
        get { self[first: "itemDefectReturnLabelSource"] }
        set { self[first: "itemDefectReturnLabelSource"] = newValue }
    }

    public var itemDefectReturnShippingFeesAmount: SchemaOrg.MonetaryAmount? {
        get { self[first: "itemDefectReturnShippingFeesAmount"] }
        set { self[first: "itemDefectReturnShippingFeesAmount"] = newValue }
    }

    public var merchantReturnLink: RFC_3986.URI? {
        get { self[first: "merchantReturnLink"] }
        set { self[first: "merchantReturnLink"] = newValue }
    }

    public var returnLabelSource: SchemaOrg.ReturnLabelSourceEnumeration? {
        get { self[first: "returnLabelSource"] }
        set { self[first: "returnLabelSource"] = newValue }
    }

    public var returnPolicyCountry: SchemaOrg.Range.ReturnPolicyCountry? {
        get { self[first: "returnPolicyCountry"] }
        set { self[first: "returnPolicyCountry"] = newValue }
    }

    public var returnPolicySeasonalOverride: SchemaOrg.MerchantReturnPolicySeasonalOverride? {
        get { self[first: "returnPolicySeasonalOverride"] }
        set { self[first: "returnPolicySeasonalOverride"] = newValue }
    }
}
