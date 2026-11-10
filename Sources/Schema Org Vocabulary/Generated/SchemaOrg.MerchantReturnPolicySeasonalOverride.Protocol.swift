extension SchemaOrg.MerchantReturnPolicySeasonalOverride {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.EndDate,
        SchemaOrg.Domain.MerchantReturnDays,
        SchemaOrg.Domain.RefundType,
        SchemaOrg.Domain.RestockingFee,
        SchemaOrg.Domain.ReturnFees,
        SchemaOrg.Domain.ReturnMethod,
        SchemaOrg.Domain.ReturnPolicyCategory,
        SchemaOrg.Domain.ReturnShippingFeesAmount,
        SchemaOrg.Domain.StartDate
    {}
}
