extension SchemaOrg.Order {

    public protocol `Protocol`:
        SchemaOrg.Intangible.`Protocol`,
        SchemaOrg.Domain.Broker,
        SchemaOrg.Domain.ConfirmationNumber,
        SchemaOrg.Domain.Customer,
        SchemaOrg.Domain.OrderDelivery,
        SchemaOrg.Domain.OrderedItem,
        SchemaOrg.Domain.PaymentDue,
        SchemaOrg.Domain.PaymentDueDate,
        SchemaOrg.Domain.PaymentMethod,
        SchemaOrg.Domain.PaymentMethodId,
        SchemaOrg.Domain.Seller
    {}
}

extension SchemaOrg.Order.`Protocol` {

    public var acceptedOffer: SchemaOrg.Offer? {
        get { self[first: "acceptedOffer"] }
        set { self[first: "acceptedOffer"] = newValue }
    }

    public var billingAddress: SchemaOrg.PostalAddress? {
        get { self[first: "billingAddress"] }
        set { self[first: "billingAddress"] = newValue }
    }

    public var discount: SchemaOrg.Range.Discount? {
        get { self[first: "discount"] }
        set { self[first: "discount"] = newValue }
    }

    public var discountCode: Swift.String? {
        get { self[first: "discountCode"] }
        set { self[first: "discountCode"] = newValue }
    }

    public var discountCurrency: Swift.String? {
        get { self[first: "discountCurrency"] }
        set { self[first: "discountCurrency"] = newValue }
    }

    public var isGift: Swift.Bool? {
        get { self[first: "isGift"] }
        set { self[first: "isGift"] = newValue }
    }

    public var merchant: SchemaOrg.Range.Merchant? {
        get { self[first: "merchant"] }
        set { self[first: "merchant"] = newValue }
    }

    public var orderDate: SchemaOrg.Range.OrderDate? {
        get { self[first: "orderDate"] }
        set { self[first: "orderDate"] = newValue }
    }

    public var orderNumber: Swift.String? {
        get { self[first: "orderNumber"] }
        set { self[first: "orderNumber"] = newValue }
    }

    public var orderStatus: SchemaOrg.OrderStatus? {
        get { self[first: "orderStatus"] }
        set { self[first: "orderStatus"] = newValue }
    }

    public var partOfInvoice: SchemaOrg.Invoice? {
        get { self[first: "partOfInvoice"] }
        set { self[first: "partOfInvoice"] = newValue }
    }

    public var paymentUrl: RFC_3986.URI? {
        get { self[first: "paymentUrl"] }
        set { self[first: "paymentUrl"] = newValue }
    }
}
