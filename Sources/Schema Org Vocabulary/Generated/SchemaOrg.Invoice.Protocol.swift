extension SchemaOrg.Invoice {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Broker,
        SchemaOrg.Domain.Category,
        SchemaOrg.Domain.ConfirmationNumber,
        SchemaOrg.Domain.Customer,
        SchemaOrg.Domain.PaymentDue,
        SchemaOrg.Domain.PaymentDueDate,
        SchemaOrg.Domain.PaymentMethod,
        SchemaOrg.Domain.PaymentMethodId,
        SchemaOrg.Domain.Provider
    {}
}

extension SchemaOrg.Invoice.`Protocol` {

    public var accountId: Swift.String? {
        get { self[first: "accountId"] }
        set { self[first: "accountId"] = newValue }
    }

    public var billingPeriod: ISO_8601.Duration? {
        get { self[first: "billingPeriod"] }
        set { self[first: "billingPeriod"] = newValue }
    }

    public var minimumPaymentDue: SchemaOrg.Range.MinimumPaymentDue? {
        get { self[first: "minimumPaymentDue"] }
        set { self[first: "minimumPaymentDue"] = newValue }
    }

    public var paymentStatus: SchemaOrg.Range.PaymentStatus? {
        get { self[first: "paymentStatus"] }
        set { self[first: "paymentStatus"] = newValue }
    }

    public var referencesOrder: SchemaOrg.Order? {
        get { self[first: "referencesOrder"] }
        set { self[first: "referencesOrder"] = newValue }
    }

    public var scheduledPaymentDate: ISO_8601.CalendarDate? {
        get { self[first: "scheduledPaymentDate"] }
        set { self[first: "scheduledPaymentDate"] = newValue }
    }

    public var totalPaymentDue: SchemaOrg.Range.TotalPaymentDue? {
        get { self[first: "totalPaymentDue"] }
        set { self[first: "totalPaymentDue"] = newValue }
    }
}
