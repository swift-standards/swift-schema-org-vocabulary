extension SchemaOrg.FollowAction {

    public protocol `Protocol`: SchemaOrg.InteractAction.`Protocol` {}
}

extension SchemaOrg.FollowAction.`Protocol` {

    public var followee: SchemaOrg.Range.Followee? {
        get { self[first: "followee"] }
        set { self[first: "followee"] = newValue }
    }
}
