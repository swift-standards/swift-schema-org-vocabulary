extension SchemaOrg.TrackAction {

    public protocol `Protocol`:
        SchemaOrg.FindAction.`Protocol`,
        SchemaOrg.Domain.DeliveryMethod
    {}
}
