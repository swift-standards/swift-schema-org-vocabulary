extension SchemaOrg.Domain {

    public protocol ReturnPolicyCategory: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ReturnPolicyCategory {

    public var returnPolicyCategory: SchemaOrg.MerchantReturnEnumeration? {
        get { self[first: "returnPolicyCategory"] }
        set { self[first: "returnPolicyCategory"] = newValue }
    }
}
