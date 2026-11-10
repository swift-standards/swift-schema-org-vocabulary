extension SchemaOrg.Key where V == SchemaOrg.Offer {

    public static var acceptedOffer: Self {
        Self("acceptedOffer")
    }

    public static var addOn: Self {
        Self("addOn")
    }

    public static var expectsAcceptanceOf: Self {
        Self("expectsAcceptanceOf")
    }

    public static var hasParticipationOffer: Self {
        Self("hasParticipationOffer")
    }

    public static var hasSponsorshipOffer: Self {
        Self("hasSponsorshipOffer")
    }

    public static var makesOffer: Self {
        Self("makesOffer")
    }
}
