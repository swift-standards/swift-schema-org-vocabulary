extension SchemaOrg.ApartmentComplex {

    public protocol `Protocol`:
        SchemaOrg.Residence.`Protocol`,
        SchemaOrg.Domain.NumberOfAccommodationUnits,
        SchemaOrg.Domain.NumberOfAvailableAccommodationUnits,
        SchemaOrg.Domain.NumberOfBedrooms,
        SchemaOrg.Domain.PetsAllowed,
        SchemaOrg.Domain.TourBookingPage
    {}
}
