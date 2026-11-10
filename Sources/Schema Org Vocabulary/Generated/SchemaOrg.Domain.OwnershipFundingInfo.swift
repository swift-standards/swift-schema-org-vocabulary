extension SchemaOrg.Domain {

    public protocol OwnershipFundingInfo: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.OwnershipFundingInfo {

    public var ownershipFundingInfo: SchemaOrg.Range.OwnershipFundingInfo? {
        get { self[first: "ownershipFundingInfo"] }
        set { self[first: "ownershipFundingInfo"] = newValue }
    }
}
