extension SchemaOrg.AlignmentObject {

    public protocol `Protocol`: SchemaOrg.Intangible.`Protocol` {}
}

extension SchemaOrg.AlignmentObject.`Protocol` {

    public var alignmentType: Swift.String? {
        get { self[first: "alignmentType"] }
        set { self[first: "alignmentType"] = newValue }
    }

    public var educationalFramework: Swift.String? {
        get { self[first: "educationalFramework"] }
        set { self[first: "educationalFramework"] = newValue }
    }

    public var targetDescription: Swift.String? {
        get { self[first: "targetDescription"] }
        set { self[first: "targetDescription"] = newValue }
    }

    public var targetName: Swift.String? {
        get { self[first: "targetName"] }
        set { self[first: "targetName"] = newValue }
    }

    public var targetUrl: RFC_3986.URI? {
        get { self[first: "targetUrl"] }
        set { self[first: "targetUrl"] = newValue }
    }
}
