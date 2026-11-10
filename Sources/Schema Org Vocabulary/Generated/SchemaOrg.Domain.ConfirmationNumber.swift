extension SchemaOrg.Domain {

    public protocol ConfirmationNumber: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.ConfirmationNumber {

    public var confirmationNumber: Swift.String? {
        get { self[first: "confirmationNumber"] }
        set { self[first: "confirmationNumber"] = newValue }
    }
}
