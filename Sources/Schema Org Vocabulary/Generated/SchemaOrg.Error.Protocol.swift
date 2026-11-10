extension SchemaOrg.Error {

    public protocol `Protocol`: SchemaOrg.InstantaneousEvent.`Protocol` {}
}

extension SchemaOrg.Error.`Protocol` {

    public var errorCode: SchemaOrg.Range.ErrorCode? {
        get { self[first: "errorCode"] }
        set { self[first: "errorCode"] = newValue }
    }
}
