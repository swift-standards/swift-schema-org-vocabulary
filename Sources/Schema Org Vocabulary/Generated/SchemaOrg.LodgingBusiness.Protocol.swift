extension SchemaOrg.LodgingBusiness {

    public protocol `Protocol`:
        SchemaOrg.LocalBusiness.`Protocol`,
        SchemaOrg.Domain.AmenityFeature,
        SchemaOrg.Domain.Audience,
        SchemaOrg.Domain.AvailableLanguage,
        SchemaOrg.Domain.CheckinTime,
        SchemaOrg.Domain.CheckoutTime,
        SchemaOrg.Domain.NumberOfRooms,
        SchemaOrg.Domain.PetsAllowed,
        SchemaOrg.Domain.StarRating
    {}
}
