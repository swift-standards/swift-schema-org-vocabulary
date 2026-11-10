extension SchemaOrg.Property {

    public static let about: Self = Self("about", domains: [.certification, .communicateAction, .creativeWork, .definedTerm, .definedTermSet, .event], ranges: [.thing])

    public static let abridged: Self = Self("abridged", domains: [.book], ranges: [.boolean])

    public static let abstract: Self = Self("abstract", domains: [.creativeWork], ranges: [.text])

    public static let accelerationTime: Self = Self("accelerationTime", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let acceptedAnswer: Self = Self("acceptedAnswer", domains: [.question], ranges: [.answer, .itemList])

    public static let acceptedOffer: Self = Self("acceptedOffer", domains: [.order], ranges: [.offer])

    public static let acceptedPaymentMethod: Self = Self("acceptedPaymentMethod", domains: [.demand, .offer, .organization], ranges: [.loanOrCredit, .paymentMethod, .text])

    public static let acceptsReservations: Self = Self("acceptsReservations", domains: [.foodEstablishment], ranges: [.boolean, .text, .url])

    public static let accessCode: Self = Self("accessCode", domains: [.deliveryEvent], ranges: [.text])

    public static let accessMode: Self = Self("accessMode", domains: [.creativeWork], ranges: [.text])

    public static let accessModeSufficient: Self = Self("accessModeSufficient", domains: [.creativeWork], ranges: [.itemList])

    public static let accessibilityAPI: Self = Self("accessibilityAPI", domains: [.creativeWork], ranges: [.text])

    public static let accessibilityControl: Self = Self("accessibilityControl", domains: [.creativeWork], ranges: [.text])

    public static let accessibilityFeature: Self = Self("accessibilityFeature", domains: [.creativeWork], ranges: [.text])

    public static let accessibilityHazard: Self = Self("accessibilityHazard", domains: [.creativeWork], ranges: [.text])

    public static let accessibilitySummary: Self = Self("accessibilitySummary", domains: [.creativeWork], ranges: [.text])

    public static let accommodationCategory: Self = Self("accommodationCategory", domains: [.accommodation], ranges: [.text])

    public static let accommodationFloorPlan: Self = Self("accommodationFloorPlan", domains: [.accommodation, .residence], ranges: [.floorPlan])

    public static let accountId: Self = Self("accountId", domains: [.invoice], ranges: [.text])

    public static let accountMinimumInflow: Self = Self("accountMinimumInflow", domains: [.bankAccount], ranges: [.monetaryAmount])

    public static let accountOverdraftLimit: Self = Self("accountOverdraftLimit", domains: [.bankAccount], ranges: [.monetaryAmount])

    public static let accountablePerson: Self = Self("accountablePerson", domains: [.creativeWork], ranges: [.person])

    public static let acquireLicensePage: Self = Self("acquireLicensePage", domains: [.creativeWork], ranges: [.creativeWork, .url])

    public static let acquiredFrom: Self = Self("acquiredFrom", domains: [.ownershipInfo], ranges: [.organization, .person])

    public static let acrissCode: Self = Self("acrissCode", domains: [.busOrCoach, .car], ranges: [.text])

    public static let actionAccessibilityRequirement: Self = Self("actionAccessibilityRequirement", domains: [.consumeAction], ranges: [.actionAccessSpecification])

    public static let actionApplication: Self = Self("actionApplication", domains: [.entryPoint], ranges: [.softwareApplication])

    public static let actionOption: Self = Self("actionOption", domains: [.chooseAction], ranges: [.text, .thing])

    public static let actionPlatform: Self = Self("actionPlatform", domains: [.entryPoint], ranges: [.digitalPlatformEnumeration, .text, .url])

    public static let actionProcess: Self = Self("actionProcess", domains: [.action], ranges: [.howTo])

    public static let actionStatus: Self = Self("actionStatus", domains: [.action], ranges: [.actionStatusType])

    public static let actionableFeedbackPolicy: Self = Self("actionableFeedbackPolicy", domains: [.newsMediaOrganization, .organization], ranges: [.creativeWork, .url])

    public static let activeIngredient: Self = Self("activeIngredient", domains: [.dietarySupplement, .drug, .drugStrength, .substance], ranges: [.text])

    public static let activityDuration: Self = Self("activityDuration", domains: [.exercisePlan], ranges: [.duration, .quantitativeValue])

    public static let activityFrequency: Self = Self("activityFrequency", domains: [.exercisePlan], ranges: [.quantitativeValue, .text])

    public static let actor: Self = Self(
        "actor",
        domains: [.clip, .creativeWorkSeason, .episode, .event, .movie, .movieSeries, .podcastSeries, .radioSeries, .tvSeries, .videoGame, .videoGameSeries, .videoObject],
        ranges: [.performingGroup, .person]
    )

    public static let actors: Self = Self("actors", domains: [.clip, .episode, .movie, .movieSeries, .radioSeries, .tvSeries, .videoGame, .videoGameSeries, .videoObject], ranges: [.person])

    public static let addOn: Self = Self("addOn", domains: [.offer], ranges: [.offer])

    public static let additionalName: Self = Self("additionalName", domains: [.person], ranges: [.text])

    public static let additionalNumberOfGuests: Self = Self("additionalNumberOfGuests", domains: [.rsvpAction], ranges: [.number])

    public static let additionalProperty: Self = Self(
        "additionalProperty",
        domains: [.merchantReturnPolicy, .offer, .place, .product, .qualitativeValue, .quantitativeValue],
        ranges: [.propertyValue]
    )

    public static let additionalType: Self = Self("additionalType", domains: [.thing], ranges: [.text, .url])

    public static let additionalVariable: Self = Self("additionalVariable", domains: [.exercisePlan], ranges: [.text])

    public static let address: Self = Self("address", domains: [.geoCoordinates, .geoShape, .organization, .person, .place], ranges: [.postalAddress, .text])

    public static let addressCountry: Self = Self("addressCountry", domains: [.definedRegion, .geoCoordinates, .geoShape, .postalAddress], ranges: [.country, .text])

    public static let addressLocality: Self = Self("addressLocality", domains: [.postalAddress], ranges: [.text])

    public static let addressRegion: Self = Self("addressRegion", domains: [.definedRegion, .postalAddress], ranges: [.administrativeArea, .text])

    public static let administrationRoute: Self = Self("administrationRoute", domains: [.drug], ranges: [.text])

    public static let advanceBookingRequirement: Self = Self("advanceBookingRequirement", domains: [.demand, .offer], ranges: [.quantitativeValue])

    public static let adverseOutcome: Self = Self("adverseOutcome", domains: [.medicalDevice, .therapeuticProcedure], ranges: [.medicalEntity])

    public static let affectedBy: Self = Self("affectedBy", domains: [.medicalTest], ranges: [.drug])

    public static let affiliation: Self = Self("affiliation", domains: [.person], ranges: [.organization])

    public static let afterMedia: Self = Self("afterMedia", domains: [.howToDirection], ranges: [.mediaObject, .url])

    public static let agent: Self = Self("agent", domains: [.action], ranges: [.organization, .person])

    public static let agentInteractionStatistic: Self = Self("agentInteractionStatistic", domains: [.organization, .person], ranges: [.interactionCounter])

    public static let aggregateElement: Self = Self("aggregateElement", domains: [.itemList], ranges: [.thing])

    public static let aggregateRating: Self = Self("aggregateRating", domains: [.brand, .creativeWork, .event, .offer, .organization, .place, .product, .service], ranges: [.aggregateRating])

    public static let aircraft: Self = Self("aircraft", domains: [.flight], ranges: [.text, .vehicle])

    public static let album: Self = Self("album", domains: [.musicGroup], ranges: [.musicAlbum])

    public static let albumProductionType: Self = Self("albumProductionType", domains: [.musicAlbum], ranges: [.musicAlbumProductionType])

    public static let albumRelease: Self = Self("albumRelease", domains: [.musicAlbum], ranges: [.musicRelease])

    public static let albumReleaseType: Self = Self("albumReleaseType", domains: [.musicAlbum], ranges: [.musicAlbumReleaseType])

    public static let albums: Self = Self("albums", domains: [.musicGroup], ranges: [.musicAlbum])

    public static let alcoholWarning: Self = Self("alcoholWarning", domains: [.drug], ranges: [.text])

    public static let algorithm: Self = Self("algorithm", domains: [.medicalRiskScore], ranges: [.text])

    public static let alignmentType: Self = Self("alignmentType", domains: [.alignmentObject], ranges: [.text])

    public static let alternateName: Self = Self("alternateName", domains: [.thing], ranges: [.text])

    public static let alternativeHeadline: Self = Self("alternativeHeadline", domains: [.creativeWork], ranges: [.text])

    public static let alternativeOf: Self = Self("alternativeOf", domains: [.gene], ranges: [.gene])

    public static let alumni: Self = Self("alumni", domains: [.educationalOrganization, .organization], ranges: [.person])

    public static let alumniOf: Self = Self("alumniOf", domains: [.person], ranges: [.educationalOrganization, .organization])

    public static let amenityFeature: Self = Self("amenityFeature", domains: [.accommodation, .floorPlan, .lodgingBusiness, .place], ranges: [.locationFeatureSpecification])

    public static let amount: Self = Self("amount", domains: [.datedMoneySpecification, .investmentOrDeposit, .loanOrCredit, .monetaryGrant, .moneyTransfer], ranges: [.monetaryAmount, .number])

    public static let amountOfThisGood: Self = Self("amountOfThisGood", domains: [.typeAndQuantityNode], ranges: [.number])

    public static let announcementLocation: Self = Self("announcementLocation", domains: [.specialAnnouncement], ranges: [.civicStructure, .localBusiness])

    public static let annualPercentageRate: Self = Self("annualPercentageRate", domains: [.financialProduct], ranges: [.number, .quantitativeValue])

    public static let answerCount: Self = Self("answerCount", domains: [.question], ranges: [.integer])

    public static let answerExplanation: Self = Self("answerExplanation", domains: [.answer], ranges: [.comment, .webContent])

    public static let antagonist: Self = Self("antagonist", domains: [.muscle], ranges: [.muscle])

    public static let appearance: Self = Self("appearance", domains: [.claim], ranges: [.creativeWork])

    public static let applicableCountry: Self = Self("applicableCountry", domains: [.merchantReturnPolicy], ranges: [.country, .text])

    public static let applicableLocation: Self = Self("applicableLocation", domains: [.drugCost, .drugLegalStatus], ranges: [.administrativeArea])

    public static let applicantLocationRequirements: Self = Self("applicantLocationRequirements", domains: [.jobPosting], ranges: [.administrativeArea])

    public static let application: Self = Self("application", domains: [.entryPoint], ranges: [.softwareApplication])

    public static let applicationCategory: Self = Self("applicationCategory", domains: [.softwareApplication], ranges: [.text, .url])

    public static let applicationContact: Self = Self("applicationContact", domains: [.jobPosting], ranges: [.contactPoint])

    public static let applicationDeadline: Self = Self("applicationDeadline", domains: [.educationalOccupationalProgram], ranges: [.date, .text])

    public static let applicationStartDate: Self = Self("applicationStartDate", domains: [.educationalOccupationalProgram], ranges: [.date])

    public static let applicationSubCategory: Self = Self("applicationSubCategory", domains: [.softwareApplication], ranges: [.text, .url])

    public static let applicationSuite: Self = Self("applicationSuite", domains: [.softwareApplication], ranges: [.text])

    public static let appliesToDeliveryMethod: Self = Self("appliesToDeliveryMethod", domains: [.deliveryChargeSpecification, .paymentChargeSpecification], ranges: [.deliveryMethod])

    public static let appliesToPaymentMethod: Self = Self("appliesToPaymentMethod", domains: [.paymentChargeSpecification], ranges: [.paymentMethod])

    public static let archiveHeld: Self = Self("archiveHeld", domains: [.archiveOrganization], ranges: [.archiveComponent])

    public static let archivedAt: Self = Self("archivedAt", domains: [.creativeWork], ranges: [.url, .webPage])

    public static let area: Self = Self("area", domains: [.broadcastService], ranges: [.place])

    public static let areaServed: Self = Self(
        "areaServed",
        domains: [.contactPoint, .deliveryChargeSpecification, .demand, .financialIncentive, .offer, .organization, .service],
        ranges: [.administrativeArea, .geoShape, .place, .text]
    )

    public static let arrivalAirport: Self = Self("arrivalAirport", domains: [.flight], ranges: [.airport])

    public static let arrivalBoatTerminal: Self = Self("arrivalBoatTerminal", domains: [.boatTrip], ranges: [.boatTerminal])

    public static let arrivalBusStop: Self = Self("arrivalBusStop", domains: [.busTrip], ranges: [.busStation, .busStop])

    public static let arrivalGate: Self = Self("arrivalGate", domains: [.flight], ranges: [.text])

    public static let arrivalPlatform: Self = Self("arrivalPlatform", domains: [.trainTrip], ranges: [.text])

    public static let arrivalStation: Self = Self("arrivalStation", domains: [.trainTrip], ranges: [.trainStation])

    public static let arrivalTerminal: Self = Self("arrivalTerminal", domains: [.flight], ranges: [.text])

    public static let arrivalTime: Self = Self("arrivalTime", domains: [.trip], ranges: [.dateTime, .time])

    public static let artEdition: Self = Self("artEdition", domains: [.visualArtwork], ranges: [.integer, .text])

    public static let artMedium: Self = Self("artMedium", domains: [.visualArtwork], ranges: [.text, .url])

    public static let arterialBranch: Self = Self("arterialBranch", domains: [.artery], ranges: [.anatomicalStructure])

    public static let artform: Self = Self("artform", domains: [.visualArtwork], ranges: [.text, .url])

    public static let articleBody: Self = Self("articleBody", domains: [.article], ranges: [.text])

    public static let articleSection: Self = Self("articleSection", domains: [.article], ranges: [.text])

    public static let artist: Self = Self("artist", domains: [.comicIssue, .comicStory, .visualArtwork], ranges: [.person])

    public static let artworkSurface: Self = Self("artworkSurface", domains: [.visualArtwork], ranges: [.text, .url])

    public static let asin: Self = Self("asin", domains: [.demand, .offer, .product], ranges: [.text, .url])

    public static let aspect: Self = Self("aspect", domains: [.medicalWebPage], ranges: [.text])

    public static let assembly: Self = Self("assembly", domains: [.apiReference], ranges: [.text])

    public static let assemblyVersion: Self = Self("assemblyVersion", domains: [.apiReference], ranges: [.text])

    public static let assesses: Self = Self("assesses", domains: [.creativeWork, .educationEvent, .learningResource], ranges: [.definedTerm, .text])

    public static let associatedAnatomy: Self = Self("associatedAnatomy", domains: [.medicalCondition, .physicalActivity], ranges: [.anatomicalStructure, .anatomicalSystem, .superficialAnatomy])

    public static let associatedArticle: Self = Self("associatedArticle", domains: [.mediaObject], ranges: [.newsArticle])

    public static let associatedClaimReview: Self = Self("associatedClaimReview", domains: [.review], ranges: [.review])

    public static let associatedDisease: Self = Self("associatedDisease", domains: [.bioChemEntity], ranges: [.medicalCondition, .propertyValue, .url])

    public static let associatedMedia: Self = Self("associatedMedia", domains: [.creativeWork, .hyperToc, .hyperTocEntry], ranges: [.mediaObject])

    public static let associatedMediaReview: Self = Self("associatedMediaReview", domains: [.review], ranges: [.review])

    public static let associatedPathophysiology: Self = Self("associatedPathophysiology", domains: [.anatomicalStructure, .anatomicalSystem, .superficialAnatomy], ranges: [.text])

    public static let associatedReview: Self = Self("associatedReview", domains: [.review], ranges: [.review])

    public static let athlete: Self = Self("athlete", domains: [.sportsTeam], ranges: [.person])

    public static let attendee: Self = Self("attendee", domains: [.event], ranges: [.organization, .person])

    public static let attendees: Self = Self("attendees", domains: [.event], ranges: [.organization, .person])

    public static let audience: Self = Self("audience", domains: [.creativeWork, .event, .lodgingBusiness, .playAction, .product, .service], ranges: [.audience])

    public static let audienceType: Self = Self("audienceType", domains: [.audience], ranges: [.text])

    public static let audio: Self = Self("audio", domains: [.creativeWork], ranges: [.audioObject, .clip, .musicRecording])

    public static let auditDate: Self = Self("auditDate", domains: [.certification], ranges: [.date, .dateTime])

    public static let authenticator: Self = Self("authenticator", domains: [.mediaSubscription], ranges: [.organization])

    public static let author: Self = Self("author", domains: [.creativeWork, .rating], ranges: [.organization, .person])

    public static let authorizedRepresentative: Self = Self("authorizedRepresentative", domains: [.organization, .product], ranges: [.organization, .person])

    public static let availability: Self = Self("availability", domains: [.demand, .offer], ranges: [.itemAvailability])

    public static let availabilityEnds: Self = Self("availabilityEnds", domains: [.actionAccessSpecification, .demand, .offer], ranges: [.date, .dateTime, .time])

    public static let availabilityStarts: Self = Self("availabilityStarts", domains: [.actionAccessSpecification, .demand, .offer], ranges: [.date, .dateTime, .time])

    public static let availableAtOrFrom: Self = Self("availableAtOrFrom", domains: [.demand, .offer], ranges: [.place])

    public static let availableChannel: Self = Self("availableChannel", domains: [.service], ranges: [.serviceChannel])

    public static let availableDeliveryMethod: Self = Self("availableDeliveryMethod", domains: [.demand, .offer], ranges: [.deliveryMethod])

    public static let availableFrom: Self = Self("availableFrom", domains: [.deliveryEvent], ranges: [.dateTime])

    public static let availableIn: Self = Self("availableIn", domains: [.drugStrength], ranges: [.administrativeArea])

    public static let availableLanguage: Self = Self("availableLanguage", domains: [.contactPoint, .course, .lodgingBusiness, .serviceChannel, .touristAttraction], ranges: [.language, .text])

    public static let availableOnDevice: Self = Self("availableOnDevice", domains: [.softwareApplication], ranges: [.text])

    public static let availableService: Self = Self("availableService", domains: [.hospital, .medicalClinic, .physician], ranges: [.medicalProcedure, .medicalTest, .medicalTherapy])

    public static let availableStrength: Self = Self("availableStrength", domains: [.drug], ranges: [.drugStrength])

    public static let availableTest: Self = Self("availableTest", domains: [.diagnosticLab], ranges: [.medicalTest])

    public static let availableThrough: Self = Self("availableThrough", domains: [.deliveryEvent], ranges: [.dateTime])

    public static let award: Self = Self("award", domains: [.creativeWork, .organization, .person, .product, .service], ranges: [.text])

    public static let awards: Self = Self("awards", domains: [.creativeWork, .organization, .person, .product], ranges: [.text])

    public static let awayTeam: Self = Self("awayTeam", domains: [.sportsEvent], ranges: [.person, .sportsTeam])

    public static let backstory: Self = Self("backstory", domains: [.article], ranges: [.creativeWork, .text])

    public static let bankAccountType: Self = Self("bankAccountType", domains: [.bankAccount], ranges: [.text, .url])

    public static let baseSalary: Self = Self("baseSalary", domains: [.employeeRole, .jobPosting], ranges: [.monetaryAmount, .number, .priceSpecification])

    public static let bccRecipient: Self = Self("bccRecipient", domains: [.message], ranges: [.contactPoint, .organization, .person])

    public static let bed: Self = Self("bed", domains: [.accommodation, .hotelRoom, .suite], ranges: [.bedDetails, .bedType, .text])

    public static let beforeMedia: Self = Self("beforeMedia", domains: [.howToDirection], ranges: [.mediaObject, .url])

    public static let beneficiaryBank: Self = Self("beneficiaryBank", domains: [.moneyTransfer], ranges: [.bankOrCreditUnion, .text])

    public static let benefits: Self = Self("benefits", domains: [.jobPosting], ranges: [.text])

    public static let benefitsSummaryUrl: Self = Self("benefitsSummaryUrl", domains: [.healthInsurancePlan], ranges: [.url])

    public static let bestRating: Self = Self("bestRating", domains: [.rating], ranges: [.number, .text])

    public static let billingAddress: Self = Self("billingAddress", domains: [.order], ranges: [.postalAddress])

    public static let billingDuration: Self = Self("billingDuration", domains: [.unitPriceSpecification], ranges: [.duration, .number, .quantitativeValue])

    public static let billingIncrement: Self = Self("billingIncrement", domains: [.unitPriceSpecification], ranges: [.number])

    public static let billingPeriod: Self = Self("billingPeriod", domains: [.invoice], ranges: [.duration])

    public static let billingStart: Self = Self("billingStart", domains: [.unitPriceSpecification], ranges: [.number])

    public static let bioChemInteraction: Self = Self("bioChemInteraction", domains: [.bioChemEntity], ranges: [.bioChemEntity])

    public static let bioChemSimilarity: Self = Self("bioChemSimilarity", domains: [.bioChemEntity], ranges: [.bioChemEntity])

    public static let biologicalRole: Self = Self("biologicalRole", domains: [.bioChemEntity], ranges: [.definedTerm])

    public static let biomechnicalClass: Self = Self("biomechnicalClass", domains: [.joint], ranges: [.text])

    public static let birthDate: Self = Self("birthDate", domains: [.person], ranges: [.date])

    public static let birthPlace: Self = Self("birthPlace", domains: [.person], ranges: [.place])

    public static let bitrate: Self = Self("bitrate", domains: [.mediaObject], ranges: [.text])

    public static let blogPost: Self = Self("blogPost", domains: [.blog], ranges: [.blogPosting])

    public static let blogPosts: Self = Self("blogPosts", domains: [.blog], ranges: [.blogPosting])

    public static let bloodSupply: Self = Self("bloodSupply", domains: [.muscle], ranges: [.vessel])

    public static let boardingGroup: Self = Self("boardingGroup", domains: [.flightReservation], ranges: [.text])

    public static let boardingPolicy: Self = Self("boardingPolicy", domains: [.airline, .flight], ranges: [.boardingPolicyType])

    public static let bodyLocation: Self = Self("bodyLocation", domains: [.anatomicalStructure, .medicalProcedure], ranges: [.text])

    public static let bodyType: Self = Self("bodyType", domains: [.vehicle], ranges: [.qualitativeValue, .text, .url])

    public static let bookEdition: Self = Self("bookEdition", domains: [.book], ranges: [.text])

    public static let bookFormat: Self = Self("bookFormat", domains: [.book], ranges: [.bookFormatType])

    public static let bookingAgent: Self = Self("bookingAgent", domains: [.reservation], ranges: [.organization, .person])

    public static let bookingTime: Self = Self("bookingTime", domains: [.reservation], ranges: [.dateTime])

    public static let borrower: Self = Self("borrower", domains: [.lendAction], ranges: [.person])

    public static let box: Self = Self("box", domains: [.geoShape], ranges: [.text])

    public static let branch: Self = Self("branch", domains: [.nerve], ranges: [.anatomicalStructure])

    public static let branchCode: Self = Self("branchCode", domains: [.place], ranges: [.text])

    public static let branchOf: Self = Self("branchOf", domains: [.localBusiness], ranges: [.organization])

    public static let brand: Self = Self("brand", domains: [.organization, .person, .product, .service], ranges: [.brand, .organization])

    public static let breadcrumb: Self = Self("breadcrumb", domains: [.webPage], ranges: [.breadcrumbList, .text])

    public static let breastfeedingWarning: Self = Self("breastfeedingWarning", domains: [.drug], ranges: [.text])

    public static let broadcastAffiliateOf: Self = Self("broadcastAffiliateOf", domains: [.broadcastService], ranges: [.organization])

    public static let broadcastChannelId: Self = Self("broadcastChannelId", domains: [.broadcastChannel], ranges: [.text])

    public static let broadcastDisplayName: Self = Self("broadcastDisplayName", domains: [.broadcastService], ranges: [.text])

    public static let broadcastFrequency: Self = Self("broadcastFrequency", domains: [.broadcastChannel, .broadcastService], ranges: [.broadcastFrequencySpecification, .text])

    public static let broadcastFrequencyValue: Self = Self("broadcastFrequencyValue", domains: [.broadcastFrequencySpecification], ranges: [.number, .quantitativeValue])

    public static let broadcastOfEvent: Self = Self("broadcastOfEvent", domains: [.broadcastEvent], ranges: [.event])

    public static let broadcastServiceTier: Self = Self("broadcastServiceTier", domains: [.broadcastChannel], ranges: [.text])

    public static let broadcastSignalModulation: Self = Self("broadcastSignalModulation", domains: [.broadcastFrequencySpecification], ranges: [.qualitativeValue, .text])

    public static let broadcastSubChannel: Self = Self("broadcastSubChannel", domains: [.broadcastFrequencySpecification], ranges: [.text])

    public static let broadcastTimezone: Self = Self("broadcastTimezone", domains: [.broadcastService], ranges: [.text])

    public static let broadcaster: Self = Self("broadcaster", domains: [.broadcastService], ranges: [.organization])

    public static let broker: Self = Self("broker", domains: [.invoice, .order, .reservation, .service], ranges: [.organization, .person])

    public static let browserRequirements: Self = Self("browserRequirements", domains: [.webApplication], ranges: [.text])

    public static let busName: Self = Self("busName", domains: [.busTrip], ranges: [.text])

    public static let busNumber: Self = Self("busNumber", domains: [.busTrip], ranges: [.text])

    public static let businessDays: Self = Self("businessDays", domains: [.servicePeriod, .shippingDeliveryTime], ranges: [.dayOfWeek, .openingHoursSpecification])

    public static let businessFunction: Self = Self("businessFunction", domains: [.demand, .offer, .typeAndQuantityNode], ranges: [.businessFunction])

    public static let buyer: Self = Self("buyer", domains: [.sellAction], ranges: [.organization, .person])

    public static let byArtist: Self = Self("byArtist", domains: [.musicAlbum, .musicRecording], ranges: [.musicGroup, .person])

    public static let byDay: Self = Self("byDay", domains: [.schedule], ranges: [.dayOfWeek, .text])

    public static let byMonth: Self = Self("byMonth", domains: [.schedule], ranges: [.integer])

    public static let byMonthDay: Self = Self("byMonthDay", domains: [.schedule], ranges: [.integer])

    public static let byMonthWeek: Self = Self("byMonthWeek", domains: [.schedule], ranges: [.integer])

    public static let callSign: Self = Self("callSign", domains: [.broadcastService, .person, .vehicle], ranges: [.text])

    public static let calories: Self = Self("calories", domains: [.nutritionInformation], ranges: [.energy])

    public static let candidate: Self = Self("candidate", domains: [.voteAction], ranges: [.person])

    public static let caption: Self = Self("caption", domains: [.audioObject, .imageObject, .videoObject], ranges: [.mediaObject, .text])

    public static let carbohydrateContent: Self = Self("carbohydrateContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let cargoVolume: Self = Self("cargoVolume", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let carrier: Self = Self("carrier", domains: [.flight, .parcelDelivery], ranges: [.organization])

    public static let carrierRequirements: Self = Self("carrierRequirements", domains: [.mobileApplication], ranges: [.text])

    public static let cashBack: Self = Self("cashBack", domains: [.paymentCard], ranges: [.boolean, .number])

    public static let catalog: Self = Self("catalog", domains: [.dataset], ranges: [.dataCatalog])

    public static let catalogNumber: Self = Self("catalogNumber", domains: [.musicRelease], ranges: [.text])

    public static let category: Self = Self(
        "category",
        domains: [.actionAccessSpecification, .guide, .invoice, .offer, .physicalActivity, .product, .recommendation, .service, .specialAnnouncement],
        ranges: [.categoryCode, .physicalActivityCategory, .text, .thing, .url]
    )

    public static let cause: Self = Self("cause", domains: [.medicalCondition], ranges: [.medicalCause])

    public static let causeOf: Self = Self("causeOf", domains: [.medicalCause], ranges: [.medicalEntity])

    public static let ccRecipient: Self = Self("ccRecipient", domains: [.message], ranges: [.contactPoint, .organization, .person])

    public static let certificationIdentification: Self = Self("certificationIdentification", domains: [.certification], ranges: [.definedTerm, .text])

    public static let certificationRating: Self = Self("certificationRating", domains: [.certification], ranges: [.rating])

    public static let certificationStatus: Self = Self("certificationStatus", domains: [.certification], ranges: [.certificationStatusEnumeration])

    public static let character: Self = Self("character", domains: [.creativeWork], ranges: [.person])

    public static let characterAttribute: Self = Self("characterAttribute", domains: [.game, .videoGameSeries], ranges: [.thing])

    public static let characterName: Self = Self("characterName", domains: [.performanceRole], ranges: [.text])

    public static let cheatCode: Self = Self("cheatCode", domains: [.videoGame, .videoGameSeries], ranges: [.creativeWork])

    public static let checkinTime: Self = Self("checkinTime", domains: [.lodgingBusiness, .lodgingReservation], ranges: [.dateTime, .time])

    public static let checkoutPageURLTemplate: Self = Self("checkoutPageURLTemplate", domains: [.offer], ranges: [.text])

    public static let checkoutTime: Self = Self("checkoutTime", domains: [.lodgingBusiness, .lodgingReservation], ranges: [.dateTime, .time])

    public static let chemicalComposition: Self = Self("chemicalComposition", domains: [.chemicalSubstance], ranges: [.text])

    public static let chemicalRole: Self = Self("chemicalRole", domains: [.chemicalSubstance, .molecularEntity], ranges: [.definedTerm])

    public static let childMaxAge: Self = Self("childMaxAge", domains: [.parentAudience], ranges: [.number])

    public static let childMinAge: Self = Self("childMinAge", domains: [.parentAudience], ranges: [.number])

    public static let childTaxon: Self = Self("childTaxon", domains: [.taxon], ranges: [.taxon, .text, .url])

    public static let children: Self = Self("children", domains: [.person], ranges: [.person])

    public static let cholesterolContent: Self = Self("cholesterolContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let circle: Self = Self("circle", domains: [.geoShape], ranges: [.text])

    public static let citation: Self = Self("citation", domains: [.creativeWork], ranges: [.creativeWork, .text])

    public static let claimInterpreter: Self = Self("claimInterpreter", domains: [.claim], ranges: [.organization, .person])

    public static let claimReviewed: Self = Self("claimReviewed", domains: [.claimReview], ranges: [.text])

    public static let clincalPharmacology: Self = Self("clincalPharmacology", domains: [.drug], ranges: [.text])

    public static let clinicalPharmacology: Self = Self("clinicalPharmacology", domains: [.drug], ranges: [.text])

    public static let clipNumber: Self = Self("clipNumber", domains: [.clip], ranges: [.integer, .text])

    public static let closes: Self = Self("closes", domains: [.openingHoursSpecification], ranges: [.time])

    public static let coach: Self = Self("coach", domains: [.sportsTeam], ranges: [.person])

    public static let code: Self = Self("code", domains: [.medicalEntity], ranges: [.medicalCode])

    public static let codeRepository: Self = Self("codeRepository", domains: [.softwareSourceCode], ranges: [.url])

    public static let codeSampleType: Self = Self("codeSampleType", domains: [.softwareSourceCode], ranges: [.text])

    public static let codeValue: Self = Self("codeValue", domains: [.categoryCode, .medicalCode], ranges: [.text])

    public static let codingSystem: Self = Self("codingSystem", domains: [.medicalCode], ranges: [.text])

    public static let colleague: Self = Self("colleague", domains: [.person], ranges: [.person, .url])

    public static let colleagues: Self = Self("colleagues", domains: [.person], ranges: [.person])

    public static let collection: Self = Self("collection", domains: [.updateAction], ranges: [.thing])

    public static let collectionSize: Self = Self("collectionSize", domains: [.collection], ranges: [.integer])

    public static let color: Self = Self("color", domains: [.product], ranges: [.text])

    public static let colorSwatch: Self = Self("colorSwatch", domains: [.product], ranges: [.imageObject, .url])

    public static let colorist: Self = Self("colorist", domains: [.comicIssue, .comicStory, .visualArtwork], ranges: [.person])

    public static let comment: Self = Self("comment", domains: [.creativeWork, .rsvpAction], ranges: [.comment])

    public static let commentCount: Self = Self("commentCount", domains: [.creativeWork], ranges: [.integer])

    public static let commentText: Self = Self("commentText", domains: [.userComments], ranges: [.text])

    public static let commentTime: Self = Self("commentTime", domains: [.userComments], ranges: [.date, .dateTime])

    public static let companyRegistration: Self = Self("companyRegistration", domains: [.organization], ranges: [.certification])

    public static let competencyRequired: Self = Self("competencyRequired", domains: [.educationalOccupationalCredential, .learningResource], ranges: [.definedTerm, .text, .url])

    public static let competitor: Self = Self("competitor", domains: [.sportsEvent], ranges: [.person, .sportsTeam])

    public static let composer: Self = Self("composer", domains: [.event, .musicComposition], ranges: [.organization, .person])

    public static let comprisedOf: Self = Self("comprisedOf", domains: [.anatomicalSystem], ranges: [.anatomicalStructure, .anatomicalSystem])

    public static let conditionsOfAccess: Self = Self("conditionsOfAccess", domains: [.creativeWork], ranges: [.text])

    public static let confirmationNumber: Self = Self("confirmationNumber", domains: [.invoice, .order], ranges: [.text])

    public static let connectedTo: Self = Self("connectedTo", domains: [.anatomicalStructure], ranges: [.anatomicalStructure])

    public static let constraintProperty: Self = Self("constraintProperty", domains: [.constraintNode], ranges: [.property, .url])

    public static let consumerNotice: Self = Self("consumerNotice", domains: [.product], ranges: [.text, .textObject, .url, .webContent])

    public static let contactOption: Self = Self("contactOption", domains: [.contactPoint], ranges: [.contactPointOption])

    public static let contactPoint: Self = Self("contactPoint", domains: [.healthInsurancePlan, .organization, .person], ranges: [.contactPoint])

    public static let contactPoints: Self = Self("contactPoints", domains: [.organization, .person], ranges: [.contactPoint])

    public static let contactType: Self = Self("contactType", domains: [.contactPoint], ranges: [.text])

    public static let contactlessPayment: Self = Self("contactlessPayment", domains: [.paymentCard], ranges: [.boolean])

    public static let containedIn: Self = Self("containedIn", domains: [.place], ranges: [.place])

    public static let containedInPlace: Self = Self("containedInPlace", domains: [.place], ranges: [.place])

    public static let containsPlace: Self = Self("containsPlace", domains: [.place], ranges: [.place])

    public static let containsSeason: Self = Self("containsSeason", domains: [.radioSeries, .tvSeries, .videoGameSeries], ranges: [.creativeWorkSeason])

    public static let contentLocation: Self = Self("contentLocation", domains: [.creativeWork], ranges: [.place])

    public static let contentRating: Self = Self("contentRating", domains: [.creativeWork], ranges: [.rating, .text])

    public static let contentReferenceTime: Self = Self("contentReferenceTime", domains: [.creativeWork], ranges: [.dateTime])

    public static let contentSize: Self = Self("contentSize", domains: [.mediaObject], ranges: [.text])

    public static let contentType: Self = Self("contentType", domains: [.entryPoint], ranges: [.text])

    public static let contentUrl: Self = Self("contentUrl", domains: [.mediaObject], ranges: [.url])

    public static let contraindication: Self = Self("contraindication", domains: [.medicalDevice, .medicalTherapy], ranges: [.medicalContraindication, .text])

    public static let contributor: Self = Self("contributor", domains: [.creativeWork, .event], ranges: [.organization, .person])

    public static let cookTime: Self = Self("cookTime", domains: [.recipe], ranges: [.duration])

    public static let cookingMethod: Self = Self("cookingMethod", domains: [.recipe], ranges: [.text])

    public static let copyrightHolder: Self = Self("copyrightHolder", domains: [.creativeWork], ranges: [.organization, .person])

    public static let copyrightNotice: Self = Self("copyrightNotice", domains: [.creativeWork], ranges: [.text])

    public static let copyrightYear: Self = Self("copyrightYear", domains: [.creativeWork], ranges: [.number])

    public static let correction: Self = Self("correction", domains: [.creativeWork], ranges: [.correctionComment, .text, .url])

    public static let correctionsPolicy: Self = Self("correctionsPolicy", domains: [.newsMediaOrganization, .organization], ranges: [.creativeWork, .url])

    public static let costCategory: Self = Self("costCategory", domains: [.drugCost], ranges: [.drugCostCategory])

    public static let costCurrency: Self = Self("costCurrency", domains: [.drugCost], ranges: [.text])

    public static let costOrigin: Self = Self("costOrigin", domains: [.drugCost], ranges: [.text])

    public static let costPerUnit: Self = Self("costPerUnit", domains: [.drugCost], ranges: [.number, .qualitativeValue, .text])

    public static let countriesNotSupported: Self = Self("countriesNotSupported", domains: [.softwareApplication], ranges: [.text])

    public static let countriesSupported: Self = Self("countriesSupported", domains: [.softwareApplication], ranges: [.text])

    public static let countryOfAssembly: Self = Self("countryOfAssembly", domains: [.product], ranges: [.text])

    public static let countryOfLastProcessing: Self = Self("countryOfLastProcessing", domains: [.product], ranges: [.text])

    public static let countryOfOrigin: Self = Self("countryOfOrigin", domains: [.creativeWork, .movie, .product, .tvEpisode, .tvSeason, .tvSeries], ranges: [.country])

    public static let course: Self = Self("course", domains: [.exerciseAction], ranges: [.place])

    public static let courseCode: Self = Self("courseCode", domains: [.course], ranges: [.text])

    public static let courseMode: Self = Self("courseMode", domains: [.courseInstance], ranges: [.text, .url])

    public static let coursePrerequisites: Self = Self("coursePrerequisites", domains: [.course], ranges: [.alignmentObject, .course, .text])

    public static let courseSchedule: Self = Self("courseSchedule", domains: [.courseInstance], ranges: [.schedule])

    public static let courseWorkload: Self = Self("courseWorkload", domains: [.courseInstance], ranges: [.text])

    public static let coverageEndTime: Self = Self("coverageEndTime", domains: [.liveBlogPosting], ranges: [.dateTime])

    public static let coverageStartTime: Self = Self("coverageStartTime", domains: [.liveBlogPosting], ranges: [.dateTime])

    public static let creativeWorkStatus: Self = Self("creativeWorkStatus", domains: [.creativeWork], ranges: [.definedTerm, .text])

    public static let creator: Self = Self("creator", domains: [.creativeWork, .userComments], ranges: [.organization, .person])

    public static let credentialCategory: Self = Self("credentialCategory", domains: [.credential], ranges: [.definedTerm, .text, .url])

    public static let creditText: Self = Self("creditText", domains: [.creativeWork], ranges: [.text])

    public static let creditedTo: Self = Self("creditedTo", domains: [.musicRelease], ranges: [.organization, .person])

    public static let cssSelector: Self = Self("cssSelector", domains: [.speakableSpecification, .webPageElement], ranges: [.cssSelectorType])

    public static let currenciesAccepted: Self = Self("currenciesAccepted", domains: [.localBusiness], ranges: [.text])

    public static let currency: Self = Self("currency", domains: [.datedMoneySpecification, .exchangeRateSpecification, .loanOrCredit, .monetaryAmount, .monetaryAmountDistribution], ranges: [.text])

    public static let currentExchangeRate: Self = Self("currentExchangeRate", domains: [.exchangeRateSpecification], ranges: [.unitPriceSpecification])

    public static let customer: Self = Self("customer", domains: [.invoice, .order], ranges: [.organization, .person])

    public static let customerRemorseReturnFees: Self = Self("customerRemorseReturnFees", domains: [.merchantReturnPolicy], ranges: [.returnFeesEnumeration])

    public static let customerRemorseReturnLabelSource: Self = Self("customerRemorseReturnLabelSource", domains: [.merchantReturnPolicy], ranges: [.returnLabelSourceEnumeration])

    public static let customerRemorseReturnShippingFeesAmount: Self = Self("customerRemorseReturnShippingFeesAmount", domains: [.merchantReturnPolicy], ranges: [.monetaryAmount])

    public static let cutoffTime: Self = Self("cutoffTime", domains: [.servicePeriod, .shippingDeliveryTime], ranges: [.time])

    public static let cvdCollectionDate: Self = Self("cvdCollectionDate", domains: [.cdcpmdRecord], ranges: [.dateTime, .text])

    public static let cvdFacilityCounty: Self = Self("cvdFacilityCounty", domains: [.cdcpmdRecord], ranges: [.text])

    public static let cvdFacilityId: Self = Self("cvdFacilityId", domains: [.cdcpmdRecord], ranges: [.text])

    public static let cvdNumBeds: Self = Self("cvdNumBeds", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumBedsOcc: Self = Self("cvdNumBedsOcc", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumC19Died: Self = Self("cvdNumC19Died", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumC19HOPats: Self = Self("cvdNumC19HOPats", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumC19HospPats: Self = Self("cvdNumC19HospPats", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumC19MechVentPats: Self = Self("cvdNumC19MechVentPats", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumC19OFMechVentPats: Self = Self("cvdNumC19OFMechVentPats", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumC19OverflowPats: Self = Self("cvdNumC19OverflowPats", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumICUBeds: Self = Self("cvdNumICUBeds", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumICUBedsOcc: Self = Self("cvdNumICUBedsOcc", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumTotBeds: Self = Self("cvdNumTotBeds", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumVent: Self = Self("cvdNumVent", domains: [.cdcpmdRecord], ranges: [.number])

    public static let cvdNumVentUse: Self = Self("cvdNumVentUse", domains: [.cdcpmdRecord], ranges: [.number])

    public static let data: Self = Self("data", domains: [.instantaneousEvent], ranges: [.thing])

    public static let dataFeedElement: Self = Self("dataFeedElement", domains: [.dataFeed], ranges: [.dataFeedItem, .text, .thing])

    public static let dataset: Self = Self("dataset", domains: [.dataCatalog], ranges: [.dataset])

    public static let datasetTimeInterval: Self = Self("datasetTimeInterval", domains: [.dataset], ranges: [.dateTime])

    public static let dateCreated: Self = Self("dateCreated", domains: [.creativeWork, .dataFeedItem], ranges: [.date, .dateTime])

    public static let dateDeleted: Self = Self("dateDeleted", domains: [.dataFeedItem], ranges: [.date, .dateTime])

    public static let dateIssued: Self = Self("dateIssued", domains: [.ticket], ranges: [.date, .dateTime])

    public static let dateModified: Self = Self("dateModified", domains: [.creativeWork, .dataFeedItem], ranges: [.date, .dateTime])

    public static let datePosted: Self = Self("datePosted", domains: [.cdcpmdRecord, .jobPosting, .realEstateListing, .specialAnnouncement], ranges: [.date, .dateTime])

    public static let datePublished: Self = Self("datePublished", domains: [.certification, .creativeWork], ranges: [.date, .dateTime])

    public static let dateRead: Self = Self("dateRead", domains: [.message], ranges: [.date, .dateTime])

    public static let dateReceived: Self = Self("dateReceived", domains: [.message], ranges: [.dateTime])

    public static let dateSent: Self = Self("dateSent", domains: [.message], ranges: [.dateTime])

    public static let dateVehicleFirstRegistered: Self = Self("dateVehicleFirstRegistered", domains: [.vehicle], ranges: [.date])

    public static let dateline: Self = Self("dateline", domains: [.newsArticle], ranges: [.text])

    public static let dayOfWeek: Self = Self("dayOfWeek", domains: [.educationalOccupationalProgram, .openingHoursSpecification], ranges: [.dayOfWeek])

    public static let deathDate: Self = Self("deathDate", domains: [.person], ranges: [.date])

    public static let deathPlace: Self = Self("deathPlace", domains: [.person], ranges: [.place])

    public static let defaultValue: Self = Self("defaultValue", domains: [.propertyValueSpecification], ranges: [.text, .thing])

    public static let deliveryAddress: Self = Self("deliveryAddress", domains: [.parcelDelivery], ranges: [.postalAddress])

    public static let deliveryLeadTime: Self = Self("deliveryLeadTime", domains: [.demand, .offer], ranges: [.quantitativeValue])

    public static let deliveryMethod: Self = Self("deliveryMethod", domains: [.orderAction, .receiveAction, .sendAction, .trackAction], ranges: [.deliveryMethod])

    public static let deliveryStatus: Self = Self("deliveryStatus", domains: [.parcelDelivery], ranges: [.deliveryEvent])

    public static let deliveryTime: Self = Self("deliveryTime", domains: [.deliveryTimeSettings, .offerShippingDetails], ranges: [.shippingDeliveryTime])

    public static let department: Self = Self("department", domains: [.organization], ranges: [.organization])

    public static let departureAirport: Self = Self("departureAirport", domains: [.flight], ranges: [.airport])

    public static let departureBoatTerminal: Self = Self("departureBoatTerminal", domains: [.boatTrip], ranges: [.boatTerminal])

    public static let departureBusStop: Self = Self("departureBusStop", domains: [.busTrip], ranges: [.busStation, .busStop])

    public static let departureGate: Self = Self("departureGate", domains: [.flight], ranges: [.text])

    public static let departurePlatform: Self = Self("departurePlatform", domains: [.trainTrip], ranges: [.text])

    public static let departureStation: Self = Self("departureStation", domains: [.trainTrip], ranges: [.trainStation])

    public static let departureTerminal: Self = Self("departureTerminal", domains: [.flight], ranges: [.text])

    public static let departureTime: Self = Self("departureTime", domains: [.trip], ranges: [.dateTime, .time])

    public static let dependencies: Self = Self("dependencies", domains: [.techArticle], ranges: [.text])

    public static let depth: Self = Self("depth", domains: [.offerShippingDetails, .product, .shippingConditions, .visualArtwork], ranges: [.distance, .quantitativeValue])

    public static let description: Self = Self("description", domains: [.thing], ranges: [.text, .textObject])

    public static let device: Self = Self("device", domains: [.softwareApplication], ranges: [.text])

    public static let diagnosis: Self = Self("diagnosis", domains: [.dDxElement, .patient], ranges: [.medicalCondition])

    public static let diagram: Self = Self("diagram", domains: [.anatomicalStructure], ranges: [.imageObject])

    public static let diet: Self = Self("diet", domains: [.exerciseAction], ranges: [.diet])

    public static let dietFeatures: Self = Self("dietFeatures", domains: [.diet], ranges: [.text])

    public static let differentialDiagnosis: Self = Self("differentialDiagnosis", domains: [.medicalCondition], ranges: [.dDxElement])

    public static let digitalSourceType: Self = Self("digitalSourceType", domains: [.creativeWork], ranges: [.iptcDigitalSourceEnumeration])

    public static let directApply: Self = Self("directApply", domains: [.jobPosting], ranges: [.boolean])

    public static let director: Self = Self(
        "director",
        domains: [.clip, .creativeWorkSeason, .episode, .event, .movie, .movieSeries, .radioSeries, .tvSeries, .videoGame, .videoGameSeries, .videoObject],
        ranges: [.person]
    )

    public static let directors: Self = Self("directors", domains: [.clip, .episode, .movie, .movieSeries, .radioSeries, .tvSeries, .videoGame, .videoGameSeries, .videoObject], ranges: [.person])

    public static let disambiguatingDescription: Self = Self("disambiguatingDescription", domains: [.thing], ranges: [.text])

    public static let discount: Self = Self("discount", domains: [.order], ranges: [.number, .text])

    public static let discountCode: Self = Self("discountCode", domains: [.order], ranges: [.text])

    public static let discountCurrency: Self = Self("discountCurrency", domains: [.order], ranges: [.text])

    public static let discusses: Self = Self("discusses", domains: [.userComments], ranges: [.creativeWork])

    public static let discussionUrl: Self = Self("discussionUrl", domains: [.creativeWork], ranges: [.url])

    public static let diseasePreventionInfo: Self = Self("diseasePreventionInfo", domains: [.specialAnnouncement], ranges: [.url, .webContent])

    public static let diseaseSpreadStatistics: Self = Self("diseaseSpreadStatistics", domains: [.specialAnnouncement], ranges: [.dataset, .observation, .url, .webContent])

    public static let displayLocation: Self = Self("displayLocation", domains: [.creativeWork, .product], ranges: [.place])

    public static let dissolutionDate: Self = Self("dissolutionDate", domains: [.organization], ranges: [.date])

    public static let distance: Self = Self("distance", domains: [.exerciseAction, .travelAction], ranges: [.distance])

    public static let distinguishingSign: Self = Self("distinguishingSign", domains: [.dDxElement], ranges: [.medicalSignOrSymptom])

    public static let distribution: Self = Self("distribution", domains: [.dataset], ranges: [.dataDownload])

    public static let diversityPolicy: Self = Self("diversityPolicy", domains: [.newsMediaOrganization, .organization], ranges: [.creativeWork, .url])

    public static let diversityStaffingReport: Self = Self("diversityStaffingReport", domains: [.newsMediaOrganization, .organization], ranges: [.article, .url])

    public static let documentation: Self = Self("documentation", domains: [.webAPI], ranges: [.creativeWork, .url])

    public static let doesNotShip: Self = Self("doesNotShip", domains: [.offerShippingDetails, .shippingConditions, .shippingRateSettings], ranges: [.boolean])

    public static let domainIncludes: Self = Self("domainIncludes", domains: [.property], ranges: [.`class`])

    public static let domiciledMortgage: Self = Self("domiciledMortgage", domains: [.mortgageLoan], ranges: [.boolean])

    public static let doorTime: Self = Self("doorTime", domains: [.event], ranges: [.dateTime, .time])

    public static let dosageForm: Self = Self("dosageForm", domains: [.drug], ranges: [.text])

    public static let doseSchedule: Self = Self("doseSchedule", domains: [.drug, .therapeuticProcedure], ranges: [.doseSchedule])

    public static let doseUnit: Self = Self("doseUnit", domains: [.doseSchedule], ranges: [.text])

    public static let doseValue: Self = Self("doseValue", domains: [.doseSchedule], ranges: [.number, .qualitativeValue])

    public static let downPayment: Self = Self("downPayment", domains: [.repaymentSpecification], ranges: [.monetaryAmount, .number])

    public static let downloadUrl: Self = Self("downloadUrl", domains: [.softwareApplication], ranges: [.url])

    public static let downvoteCount: Self = Self("downvoteCount", domains: [.comment], ranges: [.integer])

    public static let drainsTo: Self = Self("drainsTo", domains: [.vein], ranges: [.vessel])

    public static let driveWheelConfiguration: Self = Self("driveWheelConfiguration", domains: [.vehicle], ranges: [.driveWheelConfigurationValue, .text])

    public static let dropoffLocation: Self = Self("dropoffLocation", domains: [.rentalCarReservation], ranges: [.place])

    public static let dropoffTime: Self = Self("dropoffTime", domains: [.rentalCarReservation], ranges: [.dateTime])

    public static let drug: Self = Self("drug", domains: [.drugClass, .medicalCondition, .patient, .therapeuticProcedure], ranges: [.drug])

    public static let drugClass: Self = Self("drugClass", domains: [.drug], ranges: [.drugClass])

    public static let drugUnit: Self = Self("drugUnit", domains: [.drug, .drugCost], ranges: [.text])

    public static let duns: Self = Self("duns", domains: [.organization, .person], ranges: [.text])

    public static let duplicateTherapy: Self = Self("duplicateTherapy", domains: [.medicalTherapy], ranges: [.medicalTherapy])

    public static let duration: Self = Self(
        "duration",
        domains: [.audiobook, .episode, .event, .mediaObject, .movie, .musicRecording, .musicRelease, .quantitativeValueDistribution, .schedule, .servicePeriod],
        ranges: [.duration, .quantitativeValue]
    )

    public static let durationOfWarranty: Self = Self("durationOfWarranty", domains: [.warrantyPromise], ranges: [.quantitativeValue])

    public static let duringMedia: Self = Self("duringMedia", domains: [.howToDirection], ranges: [.mediaObject, .url])

    public static let earlyPrepaymentPenalty: Self = Self("earlyPrepaymentPenalty", domains: [.repaymentSpecification], ranges: [.monetaryAmount])

    public static let editEIDR: Self = Self("editEIDR", domains: [.creativeWork], ranges: [.text, .url])

    public static let editor: Self = Self("editor", domains: [.creativeWork], ranges: [.person])

    public static let eduQuestionType: Self = Self("eduQuestionType", domains: [.question, .solveMathAction], ranges: [.text])

    public static let educationRequirements: Self = Self("educationRequirements", domains: [.jobPosting, .occupation], ranges: [.educationalOccupationalCredential, .text])

    public static let educationalAlignment: Self = Self("educationalAlignment", domains: [.creativeWork, .learningResource], ranges: [.alignmentObject])

    public static let educationalCredentialAwarded: Self = Self(
        "educationalCredentialAwarded",
        domains: [.course, .educationalOccupationalProgram],
        ranges: [.educationalOccupationalCredential, .text, .url]
    )

    public static let educationalFramework: Self = Self("educationalFramework", domains: [.alignmentObject], ranges: [.text])

    public static let educationalLevel: Self = Self(
        "educationalLevel",
        domains: [.creativeWork, .educationEvent, .educationalOccupationalCredential, .learningResource],
        ranges: [.definedTerm, .text, .url]
    )

    public static let educationalProgramMode: Self = Self("educationalProgramMode", domains: [.educationalOccupationalProgram], ranges: [.text, .url])

    public static let educationalRole: Self = Self("educationalRole", domains: [.educationalAudience], ranges: [.text])

    public static let educationalUse: Self = Self("educationalUse", domains: [.creativeWork, .learningResource], ranges: [.definedTerm, .text])

    public static let elevation: Self = Self("elevation", domains: [.geoCoordinates, .geoShape], ranges: [.number, .text])

    public static let eligibilityToWorkRequirement: Self = Self("eligibilityToWorkRequirement", domains: [.jobPosting], ranges: [.text])

    public static let eligibleCustomerType: Self = Self("eligibleCustomerType", domains: [.demand, .offer], ranges: [.businessEntityType])

    public static let eligibleDuration: Self = Self("eligibleDuration", domains: [.demand, .offer], ranges: [.quantitativeValue])

    public static let eligibleQuantity: Self = Self("eligibleQuantity", domains: [.demand, .offer, .priceSpecification], ranges: [.quantitativeValue])

    public static let eligibleRegion: Self = Self("eligibleRegion", domains: [.actionAccessSpecification, .deliveryChargeSpecification, .demand, .offer], ranges: [.geoShape, .place, .text])

    public static let eligibleTransactionVolume: Self = Self("eligibleTransactionVolume", domains: [.demand, .offer, .priceSpecification], ranges: [.priceSpecification])

    public static let eligibleWithSupplier: Self = Self("eligibleWithSupplier", domains: [.financialIncentive], ranges: [.organization])

    public static let email: Self = Self("email", domains: [.contactPoint, .organization, .person], ranges: [.text])

    public static let embedUrl: Self = Self("embedUrl", domains: [.mediaObject], ranges: [.url])

    public static let embeddedTextCaption: Self = Self("embeddedTextCaption", domains: [.audioObject, .imageObject, .videoObject], ranges: [.text])

    public static let emissionsCO2: Self = Self("emissionsCO2", domains: [.vehicle], ranges: [.number])

    public static let employee: Self = Self("employee", domains: [.organization], ranges: [.person])

    public static let employees: Self = Self("employees", domains: [.organization], ranges: [.person])

    public static let employerOverview: Self = Self("employerOverview", domains: [.jobPosting], ranges: [.text])

    public static let employmentType: Self = Self("employmentType", domains: [.jobPosting], ranges: [.text])

    public static let employmentUnit: Self = Self("employmentUnit", domains: [.jobPosting], ranges: [.organization])

    public static let encodesBioChemEntity: Self = Self("encodesBioChemEntity", domains: [.gene], ranges: [.bioChemEntity])

    public static let encodesCreativeWork: Self = Self("encodesCreativeWork", domains: [.mediaObject], ranges: [.creativeWork])

    public static let encoding: Self = Self("encoding", domains: [.creativeWork], ranges: [.mediaObject])

    public static let encodingFormat: Self = Self("encodingFormat", domains: [.creativeWork, .mediaObject], ranges: [.text, .url])

    public static let encodingType: Self = Self("encodingType", domains: [.entryPoint], ranges: [.text])

    public static let encodings: Self = Self("encodings", domains: [.creativeWork], ranges: [.mediaObject])

    public static let endDate: Self = Self(
        "endDate",
        domains: [.creativeWorkSeason, .creativeWorkSeries, .datedMoneySpecification, .educationalOccupationalProgram, .event, .merchantReturnPolicySeasonalOverride, .role, .schedule],
        ranges: [.date, .dateTime]
    )

    public static let endOffset: Self = Self("endOffset", domains: [.clip], ranges: [.hyperTocEntry, .number])

    public static let endTime: Self = Self("endTime", domains: [.action, .foodEstablishmentReservation, .interactionCounter, .mediaObject, .schedule], ranges: [.dateTime, .time])

    public static let endorsee: Self = Self("endorsee", domains: [.endorseAction], ranges: [.organization, .person])

    public static let endorsers: Self = Self("endorsers", domains: [.diet], ranges: [.organization, .person])

    public static let energyEfficiencyScaleMax: Self = Self("energyEfficiencyScaleMax", domains: [.energyConsumptionDetails], ranges: [.euEnergyEfficiencyEnumeration])

    public static let energyEfficiencyScaleMin: Self = Self("energyEfficiencyScaleMin", domains: [.energyConsumptionDetails], ranges: [.euEnergyEfficiencyEnumeration])

    public static let engineDisplacement: Self = Self("engineDisplacement", domains: [.engineSpecification], ranges: [.quantitativeValue])

    public static let enginePower: Self = Self("enginePower", domains: [.engineSpecification], ranges: [.quantitativeValue])

    public static let engineType: Self = Self("engineType", domains: [.engineSpecification], ranges: [.qualitativeValue, .text, .url])

    public static let entertainmentBusiness: Self = Self("entertainmentBusiness", domains: [.performAction], ranges: [.entertainmentBusiness])

    public static let epidemiology: Self = Self("epidemiology", domains: [.medicalCondition, .physicalActivity], ranges: [.text])

    public static let episode: Self = Self("episode", domains: [.creativeWorkSeason, .radioSeries, .tvSeries, .videoGameSeries], ranges: [.episode])

    public static let episodeNumber: Self = Self("episodeNumber", domains: [.episode], ranges: [.integer, .text])

    public static let episodes: Self = Self("episodes", domains: [.creativeWorkSeason, .radioSeries, .tvSeries, .videoGameSeries], ranges: [.episode])

    public static let equal: Self = Self("equal", domains: [.qualitativeValue], ranges: [.qualitativeValue])

    public static let error: Self = Self("error", domains: [.action], ranges: [.thing])

    public static let errorCode: Self = Self("errorCode", domains: [.error], ranges: [.definedTerm, .integer, .statusEnumeration, .text])

    public static let estimatedCost: Self = Self("estimatedCost", domains: [.howTo, .howToSupply], ranges: [.monetaryAmount, .text])

    public static let estimatedFlightDuration: Self = Self("estimatedFlightDuration", domains: [.flight], ranges: [.duration, .text])

    public static let estimatedSalary: Self = Self("estimatedSalary", domains: [.jobPosting, .occupation], ranges: [.monetaryAmount, .monetaryAmountDistribution, .number])

    public static let estimatesRiskOf: Self = Self("estimatesRiskOf", domains: [.medicalRiskEstimator], ranges: [.medicalEntity])

    public static let ethicsPolicy: Self = Self("ethicsPolicy", domains: [.newsMediaOrganization, .organization], ranges: [.creativeWork, .url])

    public static let event: Self = Self("event", domains: [.informAction, .inviteAction, .joinAction, .leaveAction, .organization, .place, .playAction], ranges: [.event])

    public static let eventAttendanceMode: Self = Self("eventAttendanceMode", domains: [.event], ranges: [.eventAttendanceModeEnumeration])

    public static let eventSchedule: Self = Self("eventSchedule", domains: [.event], ranges: [.schedule])

    public static let eventStatus: Self = Self("eventStatus", domains: [.event], ranges: [.eventStatusType])

    public static let events: Self = Self("events", domains: [.organization, .place], ranges: [.event])

    public static let evidenceLevel: Self = Self("evidenceLevel", domains: [.medicalGuideline], ranges: [.medicalEvidenceLevel])

    public static let evidenceOrigin: Self = Self("evidenceOrigin", domains: [.medicalGuideline], ranges: [.text])

    public static let exampleOfWork: Self = Self("exampleOfWork", domains: [.creativeWork], ranges: [.creativeWork])

    public static let exceptDate: Self = Self("exceptDate", domains: [.schedule], ranges: [.date, .dateTime])

    public static let exchangeRateSpread: Self = Self("exchangeRateSpread", domains: [.exchangeRateSpecification], ranges: [.monetaryAmount, .number])

    public static let executableLibraryName: Self = Self("executableLibraryName", domains: [.apiReference], ranges: [.text])

    public static let exerciseCourse: Self = Self("exerciseCourse", domains: [.exerciseAction], ranges: [.place])

    public static let exercisePlan: Self = Self("exercisePlan", domains: [.exerciseAction], ranges: [.exercisePlan])

    public static let exerciseRelatedDiet: Self = Self("exerciseRelatedDiet", domains: [.exerciseAction], ranges: [.diet])

    public static let exerciseType: Self = Self("exerciseType", domains: [.exerciseAction, .exercisePlan], ranges: [.text])

    public static let exifData: Self = Self("exifData", domains: [.imageObject], ranges: [.propertyValue, .text])

    public static let expectedArrivalFrom: Self = Self("expectedArrivalFrom", domains: [.parcelDelivery], ranges: [.date, .dateTime])

    public static let expectedArrivalUntil: Self = Self("expectedArrivalUntil", domains: [.parcelDelivery], ranges: [.date, .dateTime])

    public static let expectedPrognosis: Self = Self("expectedPrognosis", domains: [.medicalCondition], ranges: [.text])

    public static let expectsAcceptanceOf: Self = Self("expectsAcceptanceOf", domains: [.actionAccessSpecification, .consumeAction, .mediaSubscription], ranges: [.offer])

    public static let experienceInPlaceOfEducation: Self = Self("experienceInPlaceOfEducation", domains: [.jobPosting], ranges: [.boolean])

    public static let experienceRequirements: Self = Self("experienceRequirements", domains: [.jobPosting, .occupation], ranges: [.occupationalExperienceRequirements, .text])

    public static let expertConsiderations: Self = Self("expertConsiderations", domains: [.diet], ranges: [.text])

    public static let expires: Self = Self("expires", domains: [.certification, .creativeWork], ranges: [.date, .dateTime])

    public static let expressedIn: Self = Self("expressedIn", domains: [.gene], ranges: [.anatomicalStructure, .anatomicalSystem, .bioChemEntity, .definedTerm])

    public static let extendedAddress: Self = Self("extendedAddress", domains: [.postalAddress], ranges: [.text])

    public static let familyName: Self = Self("familyName", domains: [.person], ranges: [.text])

    public static let fatContent: Self = Self("fatContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let faxNumber: Self = Self("faxNumber", domains: [.contactPoint, .organization, .person, .place], ranges: [.text])

    public static let featureList: Self = Self("featureList", domains: [.softwareApplication], ranges: [.text, .url])

    public static let feesAndCommissionsSpecification: Self = Self("feesAndCommissionsSpecification", domains: [.financialProduct, .financialService], ranges: [.text, .url])

    public static let fiberContent: Self = Self("fiberContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let fileFormat: Self = Self("fileFormat", domains: [.creativeWork], ranges: [.text, .url])

    public static let fileSize: Self = Self("fileSize", domains: [.softwareApplication], ranges: [.text])

    public static let financialAidEligible: Self = Self("financialAidEligible", domains: [.course, .educationalOccupationalProgram], ranges: [.definedTerm, .text])

    public static let firstAppearance: Self = Self("firstAppearance", domains: [.claim], ranges: [.creativeWork])

    public static let firstPerformance: Self = Self("firstPerformance", domains: [.musicComposition], ranges: [.event])

    public static let flightDistance: Self = Self("flightDistance", domains: [.flight], ranges: [.distance, .text])

    public static let flightNumber: Self = Self("flightNumber", domains: [.flight], ranges: [.text])

    public static let floorLevel: Self = Self("floorLevel", domains: [.accommodation, .localBusiness, .residence], ranges: [.text])

    public static let floorLimit: Self = Self("floorLimit", domains: [.paymentCard], ranges: [.monetaryAmount])

    public static let floorSize: Self = Self("floorSize", domains: [.accommodation, .floorPlan], ranges: [.quantitativeValue])

    public static let followee: Self = Self("followee", domains: [.followAction], ranges: [.organization, .person])

    public static let follows: Self = Self("follows", domains: [.person], ranges: [.person])

    public static let followup: Self = Self("followup", domains: [.medicalProcedure], ranges: [.text])

    public static let foodEstablishment: Self = Self("foodEstablishment", domains: [.cookAction], ranges: [.foodEstablishment, .place])

    public static let foodEvent: Self = Self("foodEvent", domains: [.cookAction], ranges: [.foodEvent])

    public static let foodWarning: Self = Self("foodWarning", domains: [.drug], ranges: [.text])

    public static let founder: Self = Self("founder", domains: [.organization], ranges: [.organization, .person])

    public static let founders: Self = Self("founders", domains: [.organization], ranges: [.person])

    public static let foundingDate: Self = Self("foundingDate", domains: [.organization], ranges: [.date])

    public static let foundingLocation: Self = Self("foundingLocation", domains: [.organization], ranges: [.place])

    public static let free: Self = Self("free", domains: [.publicationEvent], ranges: [.boolean])

    public static let freeShippingThreshold: Self = Self("freeShippingThreshold", domains: [.shippingRateSettings], ranges: [.deliveryChargeSpecification, .monetaryAmount])

    public static let frequency: Self = Self("frequency", domains: [.doseSchedule], ranges: [.text])

    public static let fromLocation: Self = Self("fromLocation", domains: [.exerciseAction, .moveAction, .transferAction], ranges: [.place])

    public static let fuelCapacity: Self = Self("fuelCapacity", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let fuelConsumption: Self = Self("fuelConsumption", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let fuelEfficiency: Self = Self("fuelEfficiency", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let fuelType: Self = Self("fuelType", domains: [.engineSpecification, .vehicle], ranges: [.qualitativeValue, .text, .url])

    public static let fulfillmentType: Self = Self("fulfillmentType", domains: [.shippingService], ranges: [.fulfillmentTypeEnumeration])

    public static let functionalClass: Self = Self("functionalClass", domains: [.joint], ranges: [.medicalEntity, .text])

    public static let fundedItem: Self = Self("fundedItem", domains: [.grant], ranges: [.bioChemEntity, .creativeWork, .event, .medicalEntity, .organization, .person, .product])

    public static let funder: Self = Self("funder", domains: [.creativeWork, .event, .grant, .monetaryGrant, .organization, .person], ranges: [.organization, .person])

    public static let funding: Self = Self("funding", domains: [.bioChemEntity, .creativeWork, .event, .medicalEntity, .organization, .person, .product], ranges: [.grant])

    public static let game: Self = Self("game", domains: [.gameServer], ranges: [.videoGame])

    public static let gameAvailabilityType: Self = Self("gameAvailabilityType", domains: [.playGameAction], ranges: [.gameAvailabilityEnumeration, .text])

    public static let gameEdition: Self = Self("gameEdition", domains: [.videoGame], ranges: [.text])

    public static let gameItem: Self = Self("gameItem", domains: [.game, .videoGameSeries], ranges: [.thing])

    public static let gameLocation: Self = Self("gameLocation", domains: [.game, .videoGameSeries], ranges: [.place, .postalAddress, .url])

    public static let gamePlatform: Self = Self("gamePlatform", domains: [.videoGame, .videoGameSeries], ranges: [.text, .thing, .url])

    public static let gameServer: Self = Self("gameServer", domains: [.videoGame], ranges: [.gameServer])

    public static let gameTip: Self = Self("gameTip", domains: [.videoGame], ranges: [.creativeWork])

    public static let gender: Self = Self("gender", domains: [.person, .sportsTeam], ranges: [.genderType, .text])

    public static let genre: Self = Self("genre", domains: [.broadcastChannel, .creativeWork, .musicGroup], ranges: [.definedTerm, .text, .url])

    public static let geo: Self = Self("geo", domains: [.place], ranges: [.geoCoordinates, .geoShape])

    public static let geoContains: Self = Self("geoContains", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoCoveredBy: Self = Self("geoCoveredBy", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoCovers: Self = Self("geoCovers", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoCrosses: Self = Self("geoCrosses", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoDisjoint: Self = Self("geoDisjoint", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoEquals: Self = Self("geoEquals", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoIntersects: Self = Self("geoIntersects", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoMidpoint: Self = Self("geoMidpoint", domains: [.geoCircle], ranges: [.geoCoordinates])

    public static let geoOverlaps: Self = Self("geoOverlaps", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoRadius: Self = Self("geoRadius", domains: [.geoCircle], ranges: [.distance, .number, .text])

    public static let geoTouches: Self = Self("geoTouches", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geoWithin: Self = Self("geoWithin", domains: [.geospatialGeometry, .place], ranges: [.geospatialGeometry, .place])

    public static let geographicArea: Self = Self("geographicArea", domains: [.audience], ranges: [.administrativeArea])

    public static let gettingTestedInfo: Self = Self("gettingTestedInfo", domains: [.specialAnnouncement], ranges: [.url, .webContent])

    public static let givenName: Self = Self("givenName", domains: [.person], ranges: [.text])

    public static let globalLocationNumber: Self = Self("globalLocationNumber", domains: [.organization, .person, .place], ranges: [.text])

    public static let governmentBenefitsInfo: Self = Self("governmentBenefitsInfo", domains: [.specialAnnouncement], ranges: [.governmentService])

    public static let gracePeriod: Self = Self("gracePeriod", domains: [.loanOrCredit], ranges: [.duration])

    public static let grantee: Self = Self("grantee", domains: [.digitalDocumentPermission], ranges: [.audience, .contactPoint, .organization, .person])

    public static let greater: Self = Self("greater", domains: [.qualitativeValue], ranges: [.qualitativeValue])

    public static let greaterOrEqual: Self = Self("greaterOrEqual", domains: [.qualitativeValue], ranges: [.qualitativeValue])

    public static let gtin: Self = Self("gtin", domains: [.demand, .offer, .product], ranges: [.text, .url])

    public static let gtin12: Self = Self("gtin12", domains: [.demand, .offer, .product], ranges: [.text])

    public static let gtin13: Self = Self("gtin13", domains: [.demand, .offer, .product], ranges: [.text])

    public static let gtin14: Self = Self("gtin14", domains: [.demand, .offer, .product], ranges: [.text])

    public static let gtin8: Self = Self("gtin8", domains: [.demand, .offer, .product], ranges: [.text])

    public static let guideline: Self = Self("guideline", domains: [.medicalEntity], ranges: [.medicalGuideline])

    public static let guidelineDate: Self = Self("guidelineDate", domains: [.medicalGuideline], ranges: [.date])

    public static let guidelineSubject: Self = Self("guidelineSubject", domains: [.medicalGuideline], ranges: [.medicalEntity])

    public static let handlingTime: Self = Self("handlingTime", domains: [.shippingDeliveryTime, .shippingService], ranges: [.quantitativeValue, .servicePeriod])

    public static let hasAdultConsideration: Self = Self("hasAdultConsideration", domains: [.offer, .product], ranges: [.adultOrientedEnumeration])

    public static let hasBioChemEntityPart: Self = Self("hasBioChemEntityPart", domains: [.bioChemEntity], ranges: [.bioChemEntity])

    public static let hasBioPolymerSequence: Self = Self("hasBioPolymerSequence", domains: [.gene, .protein], ranges: [.text])

    public static let hasBroadcastChannel: Self = Self("hasBroadcastChannel", domains: [.broadcastService], ranges: [.broadcastChannel])

    public static let hasCategoryCode: Self = Self("hasCategoryCode", domains: [.categoryCodeSet], ranges: [.categoryCode])

    public static let hasCertification: Self = Self("hasCertification", domains: [.organization, .person, .place, .product, .service], ranges: [.certification])

    public static let hasCourse: Self = Self("hasCourse", domains: [.educationalOccupationalProgram], ranges: [.course])

    public static let hasCourseInstance: Self = Self("hasCourseInstance", domains: [.course], ranges: [.courseInstance])

    public static let hasCredential: Self = Self("hasCredential", domains: [.organization, .person], ranges: [.credential])

    public static let hasDefinedTerm: Self = Self("hasDefinedTerm", domains: [.definedTermSet, .taxon], ranges: [.definedTerm])

    public static let hasDeliveryMethod: Self = Self("hasDeliveryMethod", domains: [.deliveryEvent, .parcelDelivery], ranges: [.deliveryMethod])

    public static let hasDigitalDocumentPermission: Self = Self("hasDigitalDocumentPermission", domains: [.digitalDocument], ranges: [.digitalDocumentPermission])

    public static let hasDigitalProductPassport: Self = Self("hasDigitalProductPassport", domains: [.offer, .product], ranges: [.digitalProductPassport, .url])

    public static let hasDriveThroughService: Self = Self("hasDriveThroughService", domains: [.place], ranges: [.boolean])

    public static let hasEnergyConsumptionDetails: Self = Self("hasEnergyConsumptionDetails", domains: [.product], ranges: [.energyConsumptionDetails])

    public static let hasEnergyEfficiencyCategory: Self = Self("hasEnergyEfficiencyCategory", domains: [.energyConsumptionDetails], ranges: [.energyEfficiencyEnumeration])

    public static let hasGS1DigitalLink: Self = Self("hasGS1DigitalLink", domains: [.offer, .organization, .place, .product], ranges: [.url])

    public static let hasHealthAspect: Self = Self("hasHealthAspect", domains: [.healthTopicContent], ranges: [.healthAspectEnumeration])

    public static let hasMap: Self = Self("hasMap", domains: [.place], ranges: [.map, .url])

    public static let hasMeasurement: Self = Self("hasMeasurement", domains: [.certification, .offer, .product, .sizeSpecification], ranges: [.quantitativeValue])

    public static let hasMemberProgram: Self = Self("hasMemberProgram", domains: [.organization], ranges: [.memberProgram])

    public static let hasMenu: Self = Self("hasMenu", domains: [.foodEstablishment], ranges: [.menu, .text, .url])

    public static let hasMenuItem: Self = Self("hasMenuItem", domains: [.menu, .menuSection], ranges: [.menuItem])

    public static let hasMenuSection: Self = Self("hasMenuSection", domains: [.menu, .menuSection], ranges: [.menuSection])

    public static let hasMerchantReturnPolicy: Self = Self("hasMerchantReturnPolicy", domains: [.offer, .organization, .product], ranges: [.merchantReturnPolicy])

    public static let hasMolecularFunction: Self = Self("hasMolecularFunction", domains: [.bioChemEntity], ranges: [.definedTerm, .propertyValue, .url])

    public static let hasOccupation: Self = Self("hasOccupation", domains: [.person], ranges: [.occupation])

    public static let hasOfferCatalog: Self = Self("hasOfferCatalog", domains: [.organization, .person, .service], ranges: [.offerCatalog])

    public static let hasPOS: Self = Self("hasPOS", domains: [.organization, .person], ranges: [.place])

    public static let hasPart: Self = Self("hasPart", domains: [.creativeWork], ranges: [.creativeWork])

    public static let hasParticipationOffer: Self = Self("hasParticipationOffer", domains: [.event], ranges: [.offer])

    public static let hasProductReturnPolicy: Self = Self("hasProductReturnPolicy", domains: [.organization, .product], ranges: [.productReturnPolicy])

    public static let hasRepresentation: Self = Self("hasRepresentation", domains: [.bioChemEntity], ranges: [.propertyValue, .text, .url])

    public static let hasShippingService: Self = Self("hasShippingService", domains: [.offerShippingDetails, .organization], ranges: [.shippingService])

    public static let hasSponsorshipOffer: Self = Self("hasSponsorshipOffer", domains: [.event], ranges: [.offer])

    public static let hasStore: Self = Self("hasStore", domains: [.onlineMarketplace], ranges: [.onlineStore])

    public static let hasTierBenefit: Self = Self("hasTierBenefit", domains: [.memberProgramTier], ranges: [.tierBenefitEnumeration])

    public static let hasTierRequirement: Self = Self("hasTierRequirement", domains: [.memberProgramTier], ranges: [.creditCard, .monetaryAmount, .text, .unitPriceSpecification])

    public static let hasTiers: Self = Self("hasTiers", domains: [.memberProgram], ranges: [.memberProgramTier])

    public static let hasVariant: Self = Self("hasVariant", domains: [.productGroup], ranges: [.product])

    public static let headline: Self = Self("headline", domains: [.creativeWork], ranges: [.text])

    public static let healthCondition: Self = Self("healthCondition", domains: [.medicalStudy, .patient, .peopleAudience], ranges: [.medicalCondition])

    public static let healthPlanCoinsuranceOption: Self = Self("healthPlanCoinsuranceOption", domains: [.healthPlanCostSharingSpecification], ranges: [.text])

    public static let healthPlanCoinsuranceRate: Self = Self("healthPlanCoinsuranceRate", domains: [.healthPlanCostSharingSpecification], ranges: [.number])

    public static let healthPlanCopay: Self = Self("healthPlanCopay", domains: [.healthPlanCostSharingSpecification], ranges: [.priceSpecification])

    public static let healthPlanCopayOption: Self = Self("healthPlanCopayOption", domains: [.healthPlanCostSharingSpecification], ranges: [.text])

    public static let healthPlanCostSharing: Self = Self("healthPlanCostSharing", domains: [.healthPlanFormulary, .healthPlanNetwork], ranges: [.boolean, .healthPlanCostSharingSpecification])

    public static let healthPlanDrugOption: Self = Self("healthPlanDrugOption", domains: [.healthInsurancePlan], ranges: [.text])

    public static let healthPlanDrugTier: Self = Self("healthPlanDrugTier", domains: [.healthInsurancePlan, .healthPlanFormulary], ranges: [.text])

    public static let healthPlanId: Self = Self("healthPlanId", domains: [.healthInsurancePlan], ranges: [.text])

    public static let healthPlanMarketingUrl: Self = Self("healthPlanMarketingUrl", domains: [.healthInsurancePlan], ranges: [.url])

    public static let healthPlanNetworkId: Self = Self("healthPlanNetworkId", domains: [.healthPlanNetwork, .medicalOrganization], ranges: [.text])

    public static let healthPlanNetworkTier: Self = Self("healthPlanNetworkTier", domains: [.healthPlanNetwork], ranges: [.text])

    public static let healthPlanPharmacyCategory: Self = Self("healthPlanPharmacyCategory", domains: [.healthPlanCostSharingSpecification], ranges: [.text])

    public static let healthcareReportingData: Self = Self("healthcareReportingData", domains: [.hospital], ranges: [.cdcpmdRecord, .dataset])

    public static let height: Self = Self("height", domains: [.mediaObject, .offerShippingDetails, .person, .product, .shippingConditions, .visualArtwork], ranges: [.distance, .quantitativeValue])

    public static let highPrice: Self = Self("highPrice", domains: [.aggregateOffer], ranges: [.number, .text])

    public static let hiringOrganization: Self = Self("hiringOrganization", domains: [.jobPosting], ranges: [.organization, .person])

    public static let holdingArchive: Self = Self("holdingArchive", domains: [.archiveComponent], ranges: [.archiveOrganization])

    public static let homeLocation: Self = Self("homeLocation", domains: [.person], ranges: [.contactPoint, .place])

    public static let homeTeam: Self = Self("homeTeam", domains: [.sportsEvent], ranges: [.person, .sportsTeam])

    public static let honorificPrefix: Self = Self("honorificPrefix", domains: [.person], ranges: [.text])

    public static let honorificSuffix: Self = Self("honorificSuffix", domains: [.person], ranges: [.text])

    public static let hospitalAffiliation: Self = Self("hospitalAffiliation", domains: [.physician], ranges: [.hospital])

    public static let hostingOrganization: Self = Self("hostingOrganization", domains: [.memberProgram, .programMembership], ranges: [.organization])

    public static let hoursAvailable: Self = Self("hoursAvailable", domains: [.contactPoint, .locationFeatureSpecification, .service], ranges: [.openingHoursSpecification])

    public static let howPerformed: Self = Self("howPerformed", domains: [.medicalProcedure], ranges: [.text])

    public static let httpMethod: Self = Self("httpMethod", domains: [.entryPoint], ranges: [.text])

    public static let iataCode: Self = Self("iataCode", domains: [.airline, .airport], ranges: [.text])

    public static let icaoCode: Self = Self("icaoCode", domains: [.airport], ranges: [.text])

    public static let identifier: Self = Self("identifier", domains: [.thing], ranges: [.propertyValue, .text, .url])

    public static let identifyingExam: Self = Self("identifyingExam", domains: [.medicalSign], ranges: [.physicalExam])

    public static let identifyingTest: Self = Self("identifyingTest", domains: [.medicalSign], ranges: [.medicalTest])

    public static let illustrator: Self = Self("illustrator", domains: [.book], ranges: [.person])

    public static let image: Self = Self("image", domains: [.thing], ranges: [.imageObject, .url])

    public static let imagingTechnique: Self = Self("imagingTechnique", domains: [.imagingTest], ranges: [.medicalImagingTechnique])

    public static let importer: Self = Self("importer", domains: [.product], ranges: [.organization, .person])

    public static let inAlbum: Self = Self("inAlbum", domains: [.musicRecording], ranges: [.musicAlbum])

    public static let inBroadcastLineup: Self = Self("inBroadcastLineup", domains: [.broadcastChannel], ranges: [.cableOrSatelliteService])

    public static let inChI: Self = Self("inChI", domains: [.molecularEntity], ranges: [.text])

    public static let inChIKey: Self = Self("inChIKey", domains: [.molecularEntity], ranges: [.text])

    public static let inCodeSet: Self = Self("inCodeSet", domains: [.categoryCode], ranges: [.categoryCodeSet, .url])

    public static let inDefinedTermSet: Self = Self("inDefinedTermSet", domains: [.definedTerm], ranges: [.definedTermSet, .url])

    public static let inLanguage: Self = Self(
        "inLanguage",
        domains: [.broadcastService, .communicateAction, .creativeWork, .event, .linkRole, .pronounceableText, .writeAction],
        ranges: [.language, .text]
    )

    public static let inPlaylist: Self = Self("inPlaylist", domains: [.musicRecording], ranges: [.musicPlaylist])

    public static let inProductGroupWithID: Self = Self("inProductGroupWithID", domains: [.product], ranges: [.text])

    public static let inStoreReturnsOffered: Self = Self("inStoreReturnsOffered", domains: [.merchantReturnPolicy], ranges: [.boolean])

    public static let inSupportOf: Self = Self("inSupportOf", domains: [.thesis], ranges: [.text])

    public static let incentiveAmount: Self = Self("incentiveAmount", domains: [.financialIncentive], ranges: [.loanOrCredit, .quantitativeValue, .unitPriceSpecification])

    public static let incentiveCompensation: Self = Self("incentiveCompensation", domains: [.jobPosting], ranges: [.text])

    public static let incentiveStatus: Self = Self("incentiveStatus", domains: [.financialIncentive], ranges: [.incentiveStatus])

    public static let incentiveType: Self = Self("incentiveType", domains: [.financialIncentive], ranges: [.incentiveType])

    public static let incentives: Self = Self("incentives", domains: [.jobPosting], ranges: [.text])

    public static let incentivizedItem: Self = Self("incentivizedItem", domains: [.financialIncentive], ranges: [.definedTerm, .product])

    public static let includedComposition: Self = Self("includedComposition", domains: [.musicComposition], ranges: [.musicComposition])

    public static let includedDataCatalog: Self = Self("includedDataCatalog", domains: [.dataset], ranges: [.dataCatalog])

    public static let includedInDataCatalog: Self = Self("includedInDataCatalog", domains: [.dataset], ranges: [.dataCatalog])

    public static let includedInHealthInsurancePlan: Self = Self("includedInHealthInsurancePlan", domains: [.drug], ranges: [.healthInsurancePlan])

    public static let includedRiskFactor: Self = Self("includedRiskFactor", domains: [.medicalRiskEstimator], ranges: [.medicalRiskFactor])

    public static let includesAttraction: Self = Self("includesAttraction", domains: [.touristDestination], ranges: [.touristAttraction])

    public static let includesHealthPlanFormulary: Self = Self("includesHealthPlanFormulary", domains: [.healthInsurancePlan], ranges: [.healthPlanFormulary])

    public static let includesHealthPlanNetwork: Self = Self("includesHealthPlanNetwork", domains: [.healthInsurancePlan], ranges: [.healthPlanNetwork])

    public static let includesObject: Self = Self("includesObject", domains: [.demand, .offer, .productCollection], ranges: [.typeAndQuantityNode])

    public static let incomeLimit: Self = Self("incomeLimit", domains: [.financialIncentive], ranges: [.monetaryAmount, .text])

    public static let increasesRiskOf: Self = Self("increasesRiskOf", domains: [.medicalRiskFactor], ranges: [.medicalEntity])

    public static let industry: Self = Self("industry", domains: [.jobPosting], ranges: [.definedTerm, .text])

    public static let ineligibleRegion: Self = Self(
        "ineligibleRegion",
        domains: [.actionAccessSpecification, .deliveryChargeSpecification, .demand, .mediaObject, .offer],
        ranges: [.geoShape, .place, .text]
    )

    public static let infectiousAgent: Self = Self("infectiousAgent", domains: [.infectiousDisease], ranges: [.text])

    public static let infectiousAgentClass: Self = Self("infectiousAgentClass", domains: [.infectiousDisease], ranges: [.infectiousAgentClass])

    public static let ingredients: Self = Self("ingredients", domains: [.recipe], ranges: [.text])

    public static let inker: Self = Self("inker", domains: [.comicIssue, .comicStory, .visualArtwork], ranges: [.person])

    public static let insertion: Self = Self("insertion", domains: [.muscle], ranges: [.anatomicalStructure])

    public static let installUrl: Self = Self("installUrl", domains: [.softwareApplication], ranges: [.url])

    public static let instructor: Self = Self("instructor", domains: [.courseInstance], ranges: [.person])

    public static let instrument: Self = Self("instrument", domains: [.action], ranges: [.thing])

    public static let intensity: Self = Self("intensity", domains: [.exercisePlan], ranges: [.quantitativeValue, .text])

    public static let interactingDrug: Self = Self("interactingDrug", domains: [.drug], ranges: [.drug])

    public static let interactionCount: Self = Self("interactionCount")

    public static let interactionService: Self = Self("interactionService", domains: [.interactionCounter], ranges: [.softwareApplication, .webSite])

    public static let interactionStatistic: Self = Self("interactionStatistic", domains: [.creativeWork, .organization, .person], ranges: [.interactionCounter])

    public static let interactionType: Self = Self("interactionType", domains: [.interactionCounter], ranges: [.action])

    public static let interactivityType: Self = Self("interactivityType", domains: [.creativeWork], ranges: [.text])

    public static let interestRate: Self = Self("interestRate", domains: [.financialProduct], ranges: [.number, .quantitativeValue])

    public static let interpretedAsClaim: Self = Self("interpretedAsClaim", domains: [.creativeWork, .mediaObject], ranges: [.claim])

    public static let inventoryLevel: Self = Self("inventoryLevel", domains: [.demand, .offer, .someProducts], ranges: [.quantitativeValue])

    public static let inverseOf: Self = Self("inverseOf", domains: [.property], ranges: [.property])

    public static let isAcceptingNewPatients: Self = Self("isAcceptingNewPatients", domains: [.medicalOrganization], ranges: [.boolean])

    public static let isAccessibleForFree: Self = Self("isAccessibleForFree", domains: [.creativeWork, .event, .place], ranges: [.boolean])

    public static let isAccessoryOrSparePartFor: Self = Self("isAccessoryOrSparePartFor", domains: [.product], ranges: [.product])

    public static let isAvailableGenerically: Self = Self("isAvailableGenerically", domains: [.drug], ranges: [.boolean])

    public static let isBasedOn: Self = Self("isBasedOn", domains: [.creativeWork], ranges: [.creativeWork, .product, .url])

    public static let isBasedOnUrl: Self = Self("isBasedOnUrl", domains: [.creativeWork], ranges: [.creativeWork, .product, .url])

    public static let isConsumableFor: Self = Self("isConsumableFor", domains: [.product], ranges: [.product])

    public static let isEncodedByBioChemEntity: Self = Self("isEncodedByBioChemEntity", domains: [.bioChemEntity], ranges: [.gene])

    public static let isFamilyFriendly: Self = Self("isFamilyFriendly", domains: [.creativeWork, .offer, .product], ranges: [.boolean])

    public static let isGift: Self = Self("isGift", domains: [.order], ranges: [.boolean])

    public static let isInvolvedInBiologicalProcess: Self = Self("isInvolvedInBiologicalProcess", domains: [.bioChemEntity], ranges: [.definedTerm, .propertyValue, .url])

    public static let isLiveBroadcast: Self = Self("isLiveBroadcast", domains: [.broadcastEvent], ranges: [.boolean])

    public static let isLocatedInSubcellularLocation: Self = Self("isLocatedInSubcellularLocation", domains: [.bioChemEntity], ranges: [.definedTerm, .propertyValue, .url])

    public static let isOftenBoughtWith: Self = Self("isOftenBoughtWith", domains: [.product], ranges: [.product])

    public static let isPartOf: Self = Self("isPartOf", domains: [.creativeWork], ranges: [.creativeWork, .url])

    public static let isPartOfBioChemEntity: Self = Self("isPartOfBioChemEntity", domains: [.bioChemEntity], ranges: [.bioChemEntity])

    public static let isPlanForApartment: Self = Self("isPlanForApartment", domains: [.floorPlan], ranges: [.accommodation])

    public static let isProprietary: Self = Self("isProprietary", domains: [.dietarySupplement, .drug], ranges: [.boolean])

    public static let isRelatedTo: Self = Self("isRelatedTo", domains: [.product, .service], ranges: [.product, .service])

    public static let isResizable: Self = Self("isResizable", domains: [.`3DModel`], ranges: [.boolean])

    public static let isSimilarTo: Self = Self("isSimilarTo", domains: [.product, .service], ranges: [.product, .service])

    public static let isStoreOn: Self = Self("isStoreOn", domains: [.onlineStore], ranges: [.onlineMarketplace])

    public static let isTierOf: Self = Self("isTierOf", domains: [.memberProgramTier], ranges: [.memberProgram])

    public static let isUnlabelledFallback: Self = Self("isUnlabelledFallback", domains: [.deliveryTimeSettings, .shippingRateSettings], ranges: [.boolean])

    public static let isVariantOf: Self = Self("isVariantOf", domains: [.product, .productModel], ranges: [.productGroup, .productModel])

    public static let isbn: Self = Self("isbn", domains: [.book], ranges: [.text])

    public static let isicV4: Self = Self("isicV4", domains: [.organization, .person, .place], ranges: [.text])

    public static let iso6523Code: Self = Self("iso6523Code", domains: [.organization], ranges: [.text])

    public static let isrcCode: Self = Self("isrcCode", domains: [.musicRecording], ranges: [.text])

    public static let issn: Self = Self("issn", domains: [.blog, .creativeWorkSeries, .dataset, .webSite], ranges: [.text])

    public static let issueNumber: Self = Self("issueNumber", domains: [.publicationIssue], ranges: [.integer, .text])

    public static let issuedBy: Self = Self("issuedBy", domains: [.certification, .permit, .ticket], ranges: [.organization])

    public static let issuedThrough: Self = Self("issuedThrough", domains: [.permit], ranges: [.service])

    public static let iswcCode: Self = Self("iswcCode", domains: [.musicComposition], ranges: [.text])

    public static let item: Self = Self("item", domains: [.dataFeedItem, .listItem], ranges: [.thing])

    public static let itemCondition: Self = Self("itemCondition", domains: [.demand, .merchantReturnPolicy, .offer, .product], ranges: [.offerItemCondition])

    public static let itemDefectReturnFees: Self = Self("itemDefectReturnFees", domains: [.merchantReturnPolicy], ranges: [.returnFeesEnumeration])

    public static let itemDefectReturnLabelSource: Self = Self("itemDefectReturnLabelSource", domains: [.merchantReturnPolicy], ranges: [.returnLabelSourceEnumeration])

    public static let itemDefectReturnShippingFeesAmount: Self = Self("itemDefectReturnShippingFeesAmount", domains: [.merchantReturnPolicy], ranges: [.monetaryAmount])

    public static let itemListElement: Self = Self("itemListElement", domains: [.itemList], ranges: [.listItem, .text, .thing])

    public static let itemListOrder: Self = Self("itemListOrder", domains: [.itemList], ranges: [.itemListOrderType, .text])

    public static let itemLocation: Self = Self("itemLocation", domains: [.archiveComponent], ranges: [.place, .postalAddress, .text])

    public static let itemOffered: Self = Self("itemOffered", domains: [.demand, .offer], ranges: [.aggregateOffer, .creativeWork, .event, .menuItem, .product, .service, .trip])

    public static let itemPopularity: Self = Self("itemPopularity", domains: [.offer], ranges: [.number, .quantitativeValue])

    public static let itemReviewed: Self = Self("itemReviewed", domains: [.aggregateRating, .review], ranges: [.thing])

    public static let itemShipped: Self = Self("itemShipped", domains: [.parcelDelivery], ranges: [.product])

    public static let itinerary: Self = Self("itinerary", domains: [.trip], ranges: [.itemList, .place])

    public static let iupacName: Self = Self("iupacName", domains: [.molecularEntity], ranges: [.text])

    public static let jobBenefits: Self = Self("jobBenefits", domains: [.jobPosting], ranges: [.text])

    public static let jobDuration: Self = Self("jobDuration", domains: [.jobPosting], ranges: [.duration, .quantitativeValue])

    public static let jobImmediateStart: Self = Self("jobImmediateStart", domains: [.jobPosting], ranges: [.boolean])

    public static let jobLocation: Self = Self("jobLocation", domains: [.jobPosting], ranges: [.place])

    public static let jobLocationType: Self = Self("jobLocationType", domains: [.jobPosting], ranges: [.text])

    public static let jobStartDate: Self = Self("jobStartDate", domains: [.jobPosting], ranges: [.date, .text])

    public static let jobTitle: Self = Self("jobTitle", domains: [.person], ranges: [.definedTerm, .text])

    public static let jurisdiction: Self = Self("jurisdiction", domains: [.governmentService, .legislation], ranges: [.administrativeArea, .text])

    public static let keywords: Self = Self("keywords", domains: [.creativeWork, .event, .organization, .place, .product], ranges: [.definedTerm, .text, .url])

    public static let knownVehicleDamages: Self = Self("knownVehicleDamages", domains: [.vehicle], ranges: [.text])

    public static let knows: Self = Self("knows", domains: [.person], ranges: [.person])

    public static let knowsAbout: Self = Self("knowsAbout", domains: [.organization, .person], ranges: [.text, .thing, .url])

    public static let knowsLanguage: Self = Self("knowsLanguage", domains: [.organization, .person], ranges: [.language, .text])

    public static let labelDetails: Self = Self("labelDetails", domains: [.drug], ranges: [.url])

    public static let landlord: Self = Self("landlord", domains: [.rentAction], ranges: [.organization, .person])

    public static let language: Self = Self("language", domains: [.communicateAction, .writeAction], ranges: [.language])

    public static let lastReviewed: Self = Self("lastReviewed", domains: [.webPage], ranges: [.date])

    public static let latitude: Self = Self("latitude", domains: [.geoCoordinates, .place], ranges: [.number, .text])

    public static let layoutImage: Self = Self("layoutImage", domains: [.floorPlan], ranges: [.imageObject, .url])

    public static let learningResourceType: Self = Self("learningResourceType", domains: [.creativeWork, .learningResource], ranges: [.definedTerm, .text])

    public static let leaseLength: Self = Self("leaseLength", domains: [.accommodation, .offer, .realEstateListing], ranges: [.duration, .quantitativeValue])

    public static let legalAddress: Self = Self("legalAddress", domains: [.organization], ranges: [.postalAddress])

    public static let legalName: Self = Self("legalName", domains: [.organization], ranges: [.text])

    public static let legalRepresentative: Self = Self("legalRepresentative", domains: [.organization], ranges: [.person])

    public static let legalStatus: Self = Self("legalStatus", domains: [.dietarySupplement, .drug, .medicalEntity], ranges: [.drugLegalStatus, .medicalEnumeration, .text])

    public static let legislationAmends: Self = Self("legislationAmends", domains: [.legislation], ranges: [.legislation])

    public static let legislationApplies: Self = Self("legislationApplies", domains: [.legislation], ranges: [.legislation])

    public static let legislationChanges: Self = Self("legislationChanges", domains: [.legislation], ranges: [.legislation])

    public static let legislationCommences: Self = Self("legislationCommences", domains: [.legislation], ranges: [.legislation])

    public static let legislationConsolidates: Self = Self("legislationConsolidates", domains: [.legislation], ranges: [.legislation])

    public static let legislationCorrects: Self = Self("legislationCorrects", domains: [.legislation], ranges: [.legislation])

    public static let legislationCountersignedBy: Self = Self("legislationCountersignedBy", domains: [.legislation], ranges: [.organization, .person])

    public static let legislationDate: Self = Self("legislationDate", domains: [.legislation], ranges: [.date])

    public static let legislationDateOfApplicability: Self = Self("legislationDateOfApplicability", domains: [.legislation], ranges: [.date])

    public static let legislationDateVersion: Self = Self("legislationDateVersion", domains: [.legislation], ranges: [.date])

    public static let legislationEnsuresImplementationOf: Self = Self("legislationEnsuresImplementationOf", domains: [.legislation], ranges: [.legislation])

    public static let legislationIdentifier: Self = Self("legislationIdentifier", domains: [.legislation], ranges: [.text, .url])

    public static let legislationJurisdiction: Self = Self("legislationJurisdiction", domains: [.legislation], ranges: [.administrativeArea, .text])

    public static let legislationLegalForce: Self = Self("legislationLegalForce", domains: [.legislation], ranges: [.legalForceStatus])

    public static let legislationLegalValue: Self = Self("legislationLegalValue", domains: [.legislationObject], ranges: [.legalValueLevel])

    public static let legislationPassedBy: Self = Self("legislationPassedBy", domains: [.legislation], ranges: [.organization, .person])

    public static let legislationRepeals: Self = Self("legislationRepeals", domains: [.legislation], ranges: [.legislation])

    public static let legislationResponsible: Self = Self("legislationResponsible", domains: [.legislation], ranges: [.organization, .person])

    public static let legislationTransposes: Self = Self("legislationTransposes", domains: [.legislation], ranges: [.legislation])

    public static let legislationType: Self = Self("legislationType", domains: [.legislation], ranges: [.categoryCode, .text])

    public static let leiCode: Self = Self("leiCode", domains: [.organization], ranges: [.text])

    public static let lender: Self = Self("lender", domains: [.borrowAction], ranges: [.organization, .person])

    public static let lesser: Self = Self("lesser", domains: [.qualitativeValue], ranges: [.qualitativeValue])

    public static let lesserOrEqual: Self = Self("lesserOrEqual", domains: [.qualitativeValue], ranges: [.qualitativeValue])

    public static let letterer: Self = Self("letterer", domains: [.comicIssue, .comicStory, .visualArtwork], ranges: [.person])

    public static let license: Self = Self("license", domains: [.creativeWork], ranges: [.creativeWork, .url])

    public static let lifeEvent: Self = Self("lifeEvent", domains: [.person], ranges: [.event])

    public static let line: Self = Self("line", domains: [.geoShape], ranges: [.text])

    public static let linkRelationship: Self = Self("linkRelationship", domains: [.linkRole], ranges: [.text])

    public static let liveBlogUpdate: Self = Self("liveBlogUpdate", domains: [.liveBlogPosting], ranges: [.blogPosting])

    public static let loanMortgageMandateAmount: Self = Self("loanMortgageMandateAmount", domains: [.mortgageLoan], ranges: [.monetaryAmount])

    public static let loanPaymentAmount: Self = Self("loanPaymentAmount", domains: [.repaymentSpecification], ranges: [.monetaryAmount])

    public static let loanPaymentFrequency: Self = Self("loanPaymentFrequency", domains: [.repaymentSpecification], ranges: [.number])

    public static let loanRepaymentForm: Self = Self("loanRepaymentForm", domains: [.loanOrCredit], ranges: [.repaymentSpecification])

    public static let loanTerm: Self = Self("loanTerm", domains: [.loanOrCredit], ranges: [.quantitativeValue])

    public static let loanType: Self = Self("loanType", domains: [.loanOrCredit], ranges: [.text, .url])

    public static let location: Self = Self("location", domains: [.action, .event, .interactionCounter, .organization], ranges: [.place, .postalAddress, .text, .virtualLocation])

    public static let locationCreated: Self = Self("locationCreated", domains: [.creativeWork], ranges: [.place])

    public static let lodgingUnitDescription: Self = Self("lodgingUnitDescription", domains: [.lodgingReservation], ranges: [.text])

    public static let lodgingUnitType: Self = Self("lodgingUnitType", domains: [.lodgingReservation], ranges: [.qualitativeValue, .text])

    public static let logo: Self = Self("logo", domains: [.brand, .certification, .organization, .place, .product, .service], ranges: [.imageObject, .url])

    public static let longitude: Self = Self("longitude", domains: [.geoCoordinates, .place], ranges: [.number, .text])

    public static let loser: Self = Self("loser", domains: [.winAction], ranges: [.person])

    public static let lowPrice: Self = Self("lowPrice", domains: [.aggregateOffer], ranges: [.number, .text])

    public static let lyricist: Self = Self("lyricist", domains: [.musicComposition], ranges: [.person])

    public static let lyrics: Self = Self("lyrics", domains: [.musicComposition], ranges: [.creativeWork])

    public static let mainContentOfPage: Self = Self("mainContentOfPage", domains: [.webPage], ranges: [.webPageElement])

    public static let mainEntity: Self = Self("mainEntity", domains: [.creativeWork], ranges: [.thing])

    public static let mainEntityOfPage: Self = Self("mainEntityOfPage", domains: [.thing], ranges: [.creativeWork, .url])

    public static let maintainer: Self = Self("maintainer", domains: [.creativeWork], ranges: [.organization, .person])

    public static let makesOffer: Self = Self("makesOffer", domains: [.organization, .person], ranges: [.offer])

    public static let manufacturer: Self = Self("manufacturer", domains: [.product], ranges: [.organization])

    public static let map: Self = Self("map", domains: [.place], ranges: [.url])

    public static let mapType: Self = Self("mapType", domains: [.map], ranges: [.mapCategoryType])

    public static let maps: Self = Self("maps", domains: [.place], ranges: [.url])

    public static let marginOfError: Self = Self("marginOfError", domains: [.observation], ranges: [.quantitativeValue])

    public static let masthead: Self = Self("masthead", domains: [.newsMediaOrganization], ranges: [.creativeWork, .url])

    public static let material: Self = Self("material", domains: [.creativeWork, .product], ranges: [.product, .text, .url])

    public static let materialExtent: Self = Self("materialExtent", domains: [.creativeWork], ranges: [.quantitativeValue, .text])

    public static let mathExpression: Self = Self("mathExpression", domains: [.mathSolver], ranges: [.solveMathAction, .text])

    public static let maxPrice: Self = Self("maxPrice", domains: [.priceSpecification], ranges: [.number])

    public static let maxValue: Self = Self("maxValue", domains: [.monetaryAmount, .propertyValue, .propertyValueSpecification, .quantitativeValue], ranges: [.number])

    public static let maximumAttendeeCapacity: Self = Self("maximumAttendeeCapacity", domains: [.event, .place], ranges: [.integer])

    public static let maximumEnrollment: Self = Self("maximumEnrollment", domains: [.educationalOccupationalProgram], ranges: [.integer])

    public static let maximumIntake: Self = Self("maximumIntake", domains: [.dietarySupplement, .drug, .drugStrength, .substance], ranges: [.maximumDoseSchedule])

    public static let maximumPhysicalAttendeeCapacity: Self = Self("maximumPhysicalAttendeeCapacity", domains: [.event], ranges: [.integer])

    public static let maximumVirtualAttendeeCapacity: Self = Self("maximumVirtualAttendeeCapacity", domains: [.event], ranges: [.integer])

    public static let mealService: Self = Self("mealService", domains: [.flight], ranges: [.text])

    public static let measuredProperty: Self = Self("measuredProperty", domains: [.observation, .statisticalVariable], ranges: [.property])

    public static let measurementDenominator: Self = Self("measurementDenominator", domains: [.observation, .statisticalVariable], ranges: [.statisticalVariable])

    public static let measurementMethod: Self = Self(
        "measurementMethod",
        domains: [.dataCatalog, .dataDownload, .dataset, .observation, .propertyValue, .statisticalVariable],
        ranges: [.definedTerm, .measurementMethodEnum, .text, .url]
    )

    public static let measurementQualifier: Self = Self("measurementQualifier", domains: [.observation, .statisticalVariable], ranges: [.enumeration])

    public static let measurementTechnique: Self = Self(
        "measurementTechnique",
        domains: [.dataCatalog, .dataDownload, .dataset, .observation, .propertyValue, .statisticalVariable],
        ranges: [.definedTerm, .measurementMethodEnum, .text, .url]
    )

    public static let mechanismOfAction: Self = Self("mechanismOfAction", domains: [.dietarySupplement, .drug], ranges: [.text])

    public static let mediaAuthenticityCategory: Self = Self("mediaAuthenticityCategory", domains: [.mediaReview], ranges: [.mediaManipulationRatingEnumeration])

    public static let mediaItemAppearance: Self = Self("mediaItemAppearance", domains: [.mediaReviewItem], ranges: [.mediaObject])

    public static let median: Self = Self("median", domains: [.quantitativeValueDistribution], ranges: [.number])

    public static let medicalAudience: Self = Self("medicalAudience", domains: [.medicalWebPage], ranges: [.medicalAudience, .medicalAudienceType])

    public static let medicalSpecialty: Self = Self("medicalSpecialty", domains: [.hospital, .medicalClinic, .medicalOrganization, .physician], ranges: [.medicalSpecialty])

    public static let medicineSystem: Self = Self("medicineSystem", domains: [.medicalEntity], ranges: [.medicineSystem])

    public static let meetsEmissionStandard: Self = Self("meetsEmissionStandard", domains: [.vehicle], ranges: [.qualitativeValue, .text, .url])

    public static let member: Self = Self("member", domains: [.organization, .programMembership], ranges: [.organization, .person])

    public static let memberOf: Self = Self("memberOf", domains: [.organization, .person], ranges: [.memberProgramTier, .organization, .programMembership])

    public static let members: Self = Self("members", domains: [.organization, .programMembership], ranges: [.organization, .person])

    public static let membershipNumber: Self = Self("membershipNumber", domains: [.programMembership], ranges: [.text])

    public static let membershipPointsEarned: Self = Self("membershipPointsEarned", domains: [.memberProgramTier, .priceSpecification, .programMembership], ranges: [.number, .quantitativeValue])

    public static let memoryRequirements: Self = Self("memoryRequirements", domains: [.softwareApplication], ranges: [.text, .url])

    public static let mentions: Self = Self("mentions", domains: [.creativeWork], ranges: [.thing])

    public static let menu: Self = Self("menu", domains: [.foodEstablishment], ranges: [.menu, .text, .url])

    public static let menuAddOn: Self = Self("menuAddOn", domains: [.menuItem], ranges: [.menuItem, .menuSection])

    public static let merchant: Self = Self("merchant", domains: [.order], ranges: [.organization, .person])

    public static let merchantReturnDays: Self = Self("merchantReturnDays", domains: [.merchantReturnPolicy, .merchantReturnPolicySeasonalOverride], ranges: [.date, .dateTime, .integer])

    public static let merchantReturnLink: Self = Self("merchantReturnLink", domains: [.merchantReturnPolicy], ranges: [.url])

    public static let messageAttachment: Self = Self("messageAttachment", domains: [.message], ranges: [.creativeWork])

    public static let mileageFromOdometer: Self = Self("mileageFromOdometer", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let minPrice: Self = Self("minPrice", domains: [.priceSpecification], ranges: [.number])

    public static let minValue: Self = Self("minValue", domains: [.monetaryAmount, .propertyValue, .propertyValueSpecification, .quantitativeValue], ranges: [.number])

    public static let minimumOrderValue: Self = Self("minimumOrderValue", domains: [.shippingRateSettings], ranges: [.monetaryAmount, .number, .priceSpecification])

    public static let minimumPaymentDue: Self = Self("minimumPaymentDue", domains: [.invoice], ranges: [.monetaryAmount, .priceSpecification])

    public static let missionCoveragePrioritiesPolicy: Self = Self("missionCoveragePrioritiesPolicy", domains: [.newsMediaOrganization], ranges: [.creativeWork, .url])

    public static let mobileUrl: Self = Self("mobileUrl", domains: [.offer, .product], ranges: [.text])

    public static let model: Self = Self("model", domains: [.product], ranges: [.productModel, .text])

    public static let modelDate: Self = Self("modelDate", domains: [.vehicle], ranges: [.date])

    public static let modifiedTime: Self = Self("modifiedTime", domains: [.reservation], ranges: [.dateTime])

    public static let molecularFormula: Self = Self("molecularFormula", domains: [.molecularEntity], ranges: [.text])

    public static let molecularWeight: Self = Self("molecularWeight", domains: [.molecularEntity], ranges: [.quantitativeValue, .text])

    public static let monoisotopicMolecularWeight: Self = Self("monoisotopicMolecularWeight", domains: [.molecularEntity], ranges: [.quantitativeValue, .text])

    public static let monthlyMinimumRepaymentAmount: Self = Self("monthlyMinimumRepaymentAmount", domains: [.paymentCard], ranges: [.monetaryAmount, .number])

    public static let monthsOfExperience: Self = Self("monthsOfExperience", domains: [.occupationalExperienceRequirements], ranges: [.number])

    public static let mpn: Self = Self("mpn", domains: [.demand, .offer, .product], ranges: [.text])

    public static let multipleValues: Self = Self("multipleValues", domains: [.propertyValueSpecification], ranges: [.boolean])

    public static let muscleAction: Self = Self("muscleAction", domains: [.muscle], ranges: [.text])

    public static let musicArrangement: Self = Self("musicArrangement", domains: [.musicComposition], ranges: [.musicComposition])

    public static let musicBy: Self = Self(
        "musicBy",
        domains: [.clip, .episode, .movie, .movieSeries, .radioSeries, .tvSeries, .videoGame, .videoGameSeries, .videoObject],
        ranges: [.musicGroup, .person]
    )

    public static let musicCompositionForm: Self = Self("musicCompositionForm", domains: [.musicComposition], ranges: [.text])

    public static let musicGroupMember: Self = Self("musicGroupMember", domains: [.musicGroup], ranges: [.person])

    public static let musicReleaseFormat: Self = Self("musicReleaseFormat", domains: [.musicRelease], ranges: [.musicReleaseFormatType])

    public static let musicalKey: Self = Self("musicalKey", domains: [.musicComposition], ranges: [.text])

    public static let naics: Self = Self("naics", domains: [.organization, .person], ranges: [.text])

    public static let name: Self = Self("name", domains: [.thing], ranges: [.text])

    public static let namedPosition: Self = Self("namedPosition", domains: [.role], ranges: [.text, .url])

    public static let nationality: Self = Self("nationality", domains: [.person], ranges: [.country])

    public static let naturalProgression: Self = Self("naturalProgression", domains: [.medicalCondition], ranges: [.text])

    public static let negativeNotes: Self = Self("negativeNotes", domains: [.product, .review], ranges: [.itemList, .listItem, .text, .webContent])

    public static let nerve: Self = Self("nerve", domains: [.muscle], ranges: [.nerve])

    public static let nerveMotor: Self = Self("nerveMotor", domains: [.nerve], ranges: [.muscle])

    public static let netWorth: Self = Self("netWorth", domains: [.person], ranges: [.monetaryAmount, .priceSpecification])

    public static let newsUpdatesAndGuidelines: Self = Self("newsUpdatesAndGuidelines", domains: [.specialAnnouncement], ranges: [.url, .webContent])

    public static let nextItem: Self = Self("nextItem", domains: [.listItem], ranges: [.listItem])

    public static let noBylinesPolicy: Self = Self("noBylinesPolicy", domains: [.newsMediaOrganization], ranges: [.creativeWork, .url])

    public static let nonEqual: Self = Self("nonEqual", domains: [.qualitativeValue], ranges: [.qualitativeValue])

    public static let nonProprietaryName: Self = Self("nonProprietaryName", domains: [.dietarySupplement, .drug], ranges: [.text])

    public static let nonprofitStatus: Self = Self("nonprofitStatus", domains: [.organization], ranges: [.nonprofitType])

    public static let normalRange: Self = Self("normalRange", domains: [.medicalTest], ranges: [.medicalEnumeration, .text])

    public static let nsn: Self = Self("nsn", domains: [.product], ranges: [.text])

    public static let numAdults: Self = Self("numAdults", domains: [.lodgingReservation], ranges: [.integer, .quantitativeValue])

    public static let numChildren: Self = Self("numChildren", domains: [.lodgingReservation], ranges: [.integer, .quantitativeValue])

    public static let numConstraints: Self = Self("numConstraints", domains: [.constraintNode], ranges: [.integer])

    public static let numItems: Self = Self("numItems", domains: [.shippingConditions], ranges: [.quantitativeValue])

    public static let numTracks: Self = Self("numTracks", domains: [.musicPlaylist], ranges: [.integer])

    public static let numberOfAccommodationUnits: Self = Self("numberOfAccommodationUnits", domains: [.apartmentComplex, .floorPlan], ranges: [.quantitativeValue])

    public static let numberOfAirbags: Self = Self("numberOfAirbags", domains: [.vehicle], ranges: [.number, .text])

    public static let numberOfAvailableAccommodationUnits: Self = Self("numberOfAvailableAccommodationUnits", domains: [.apartmentComplex, .floorPlan], ranges: [.quantitativeValue])

    public static let numberOfAxles: Self = Self("numberOfAxles", domains: [.vehicle], ranges: [.number, .quantitativeValue])

    public static let numberOfBathroomsTotal: Self = Self("numberOfBathroomsTotal", domains: [.accommodation, .floorPlan], ranges: [.integer])

    public static let numberOfBedrooms: Self = Self("numberOfBedrooms", domains: [.accommodation, .apartmentComplex, .floorPlan], ranges: [.number, .quantitativeValue])

    public static let numberOfBeds: Self = Self("numberOfBeds", domains: [.bedDetails], ranges: [.number])

    public static let numberOfCredits: Self = Self("numberOfCredits", domains: [.course, .educationalOccupationalProgram], ranges: [.integer, .structuredValue])

    public static let numberOfDoors: Self = Self("numberOfDoors", domains: [.vehicle], ranges: [.number, .quantitativeValue])

    public static let numberOfEmployees: Self = Self("numberOfEmployees", domains: [.businessAudience, .organization], ranges: [.quantitativeValue])

    public static let numberOfEpisodes: Self = Self("numberOfEpisodes", domains: [.creativeWorkSeason, .radioSeries, .tvSeries, .videoGameSeries], ranges: [.integer])

    public static let numberOfForwardGears: Self = Self("numberOfForwardGears", domains: [.vehicle], ranges: [.number, .quantitativeValue])

    public static let numberOfFullBathrooms: Self = Self("numberOfFullBathrooms", domains: [.accommodation, .floorPlan], ranges: [.number])

    public static let numberOfItems: Self = Self("numberOfItems", domains: [.itemList], ranges: [.integer])

    public static let numberOfLoanPayments: Self = Self("numberOfLoanPayments", domains: [.repaymentSpecification], ranges: [.number])

    public static let numberOfPages: Self = Self("numberOfPages", domains: [.book], ranges: [.integer])

    public static let numberOfPartialBathrooms: Self = Self("numberOfPartialBathrooms", domains: [.accommodation, .floorPlan], ranges: [.number])

    public static let numberOfPlayers: Self = Self("numberOfPlayers", domains: [.game, .videoGameSeries], ranges: [.quantitativeValue])

    public static let numberOfPreviousOwners: Self = Self("numberOfPreviousOwners", domains: [.vehicle], ranges: [.number, .quantitativeValue])

    public static let numberOfRooms: Self = Self(
        "numberOfRooms",
        domains: [.accommodation, .apartment, .floorPlan, .house, .lodgingBusiness, .singleFamilyResidence, .suite],
        ranges: [.number, .quantitativeValue]
    )

    public static let numberOfSeasons: Self = Self("numberOfSeasons", domains: [.radioSeries, .tvSeries, .videoGameSeries], ranges: [.integer])

    public static let numberedPosition: Self = Self("numberedPosition", domains: [.organizationRole], ranges: [.number])

    public static let nutrition: Self = Self("nutrition", domains: [.menuItem, .recipe], ranges: [.nutritionInformation])

    public static let object: Self = Self("object", domains: [.action], ranges: [.thing])

    public static let observationAbout: Self = Self("observationAbout", domains: [.observation], ranges: [.place, .thing])

    public static let observationDate: Self = Self("observationDate", domains: [.observation], ranges: [.date, .dateTime])

    public static let observationPeriod: Self = Self("observationPeriod", domains: [.observation], ranges: [.text])

    public static let occupancy: Self = Self("occupancy", domains: [.accommodation, .apartment, .hotelRoom, .singleFamilyResidence, .suite], ranges: [.quantitativeValue])

    public static let occupationLocation: Self = Self("occupationLocation", domains: [.occupation], ranges: [.administrativeArea])

    public static let occupationalCategory: Self = Self(
        "occupationalCategory",
        domains: [.educationalOccupationalProgram, .jobPosting, .occupation, .physician, .workBasedProgram],
        ranges: [.categoryCode, .text]
    )

    public static let occupationalCredentialAwarded: Self = Self(
        "occupationalCredentialAwarded",
        domains: [.course, .educationalOccupationalProgram],
        ranges: [.educationalOccupationalCredential, .text, .url]
    )

    public static let offerCount: Self = Self("offerCount", domains: [.aggregateOffer], ranges: [.integer])

    public static let offeredBy: Self = Self("offeredBy", domains: [.offer], ranges: [.organization, .person])

    public static let offers: Self = Self(
        "offers",
        domains: [.aggregateOffer, .creativeWork, .educationalOccupationalProgram, .event, .menuItem, .product, .service, .trip],
        ranges: [.demand, .offer]
    )

    public static let offersPrescriptionByMail: Self = Self("offersPrescriptionByMail", domains: [.healthPlanFormulary], ranges: [.boolean])

    public static let openingHours: Self = Self("openingHours", domains: [.civicStructure, .localBusiness], ranges: [.text])

    public static let openingHoursSpecification: Self = Self("openingHoursSpecification", domains: [.place], ranges: [.openingHoursSpecification])

    public static let opens: Self = Self("opens", domains: [.openingHoursSpecification], ranges: [.time])

    public static let operatingSystem: Self = Self("operatingSystem", domains: [.softwareApplication], ranges: [.operatingSystem, .text])

    public static let opponent: Self = Self("opponent", domains: [.exerciseAction], ranges: [.person])

    public static let option: Self = Self("option", domains: [.chooseAction], ranges: [.text, .thing])

    public static let orderDate: Self = Self("orderDate", domains: [.order], ranges: [.date, .dateTime])

    public static let orderDelivery: Self = Self("orderDelivery", domains: [.order, .orderItem], ranges: [.parcelDelivery])

    public static let orderItemNumber: Self = Self("orderItemNumber", domains: [.orderItem], ranges: [.text])

    public static let orderItemStatus: Self = Self("orderItemStatus", domains: [.orderItem], ranges: [.orderStatus])

    public static let orderNumber: Self = Self("orderNumber", domains: [.order], ranges: [.text])

    public static let orderPercentage: Self = Self("orderPercentage", domains: [.shippingRateSettings], ranges: [.number])

    public static let orderQuantity: Self = Self("orderQuantity", domains: [.orderItem], ranges: [.number, .quantitativeValue])

    public static let orderStatus: Self = Self("orderStatus", domains: [.order], ranges: [.orderStatus])

    public static let orderValue: Self = Self("orderValue", domains: [.shippingConditions], ranges: [.monetaryAmount])

    public static let orderedItem: Self = Self("orderedItem", domains: [.order, .orderItem], ranges: [.orderItem, .product, .service])

    public static let organizer: Self = Self("organizer", domains: [.event], ranges: [.organization, .person])

    public static let originAddress: Self = Self("originAddress", domains: [.parcelDelivery], ranges: [.postalAddress])

    public static let originalMediaContextDescription: Self = Self("originalMediaContextDescription", domains: [.mediaReview], ranges: [.text])

    public static let originalMediaLink: Self = Self("originalMediaLink", domains: [.mediaReview], ranges: [.mediaObject, .url, .webPage])

    public static let originatesFrom: Self = Self("originatesFrom", domains: [.lymphaticVessel], ranges: [.vessel])

    public static let overdosage: Self = Self("overdosage", domains: [.drug], ranges: [.text])

    public static let ownedFrom: Self = Self("ownedFrom", domains: [.ownershipInfo], ranges: [.dateTime])

    public static let ownedThrough: Self = Self("ownedThrough", domains: [.ownershipInfo], ranges: [.dateTime])

    public static let owner: Self = Self("owner", domains: [.thing], ranges: [.organization, .person])

    public static let ownershipFundingInfo: Self = Self("ownershipFundingInfo", domains: [.newsMediaOrganization, .organization], ranges: [.aboutPage, .creativeWork, .text, .url])

    public static let owns: Self = Self("owns", domains: [.organization, .person], ranges: [.thing])

    public static let pageEnd: Self = Self("pageEnd", domains: [.article, .chapter, .publicationIssue, .publicationVolume], ranges: [.integer, .text])

    public static let pageStart: Self = Self("pageStart", domains: [.article, .chapter, .publicationIssue, .publicationVolume], ranges: [.integer, .text])

    public static let pagination: Self = Self("pagination", domains: [.article, .chapter, .publicationIssue, .publicationVolume], ranges: [.text])

    public static let parent: Self = Self("parent", domains: [.person], ranges: [.person])

    public static let parentItem: Self = Self("parentItem", domains: [.answer, .comment, .question], ranges: [.comment, .creativeWork])

    public static let parentOrganization: Self = Self("parentOrganization", domains: [.organization], ranges: [.organization])

    public static let parentService: Self = Self("parentService", domains: [.broadcastService], ranges: [.broadcastService])

    public static let parentTaxon: Self = Self("parentTaxon", domains: [.taxon], ranges: [.taxon, .text, .url])

    public static let parents: Self = Self("parents", domains: [.person], ranges: [.person])

    public static let partOfEpisode: Self = Self("partOfEpisode", domains: [.clip], ranges: [.episode])

    public static let partOfInvoice: Self = Self("partOfInvoice", domains: [.order], ranges: [.invoice])

    public static let partOfOrder: Self = Self("partOfOrder", domains: [.parcelDelivery], ranges: [.order])

    public static let partOfSeason: Self = Self("partOfSeason", domains: [.clip, .episode], ranges: [.creativeWorkSeason])

    public static let partOfSeries: Self = Self("partOfSeries", domains: [.clip, .creativeWorkSeason, .episode], ranges: [.creativeWorkSeries])

    public static let partOfSystem: Self = Self("partOfSystem", domains: [.anatomicalStructure], ranges: [.anatomicalSystem])

    public static let partOfTVSeries: Self = Self("partOfTVSeries", domains: [.tvClip, .tvEpisode, .tvSeason], ranges: [.tvSeries])

    public static let partOfTrip: Self = Self("partOfTrip", domains: [.trip], ranges: [.trip])

    public static let participant: Self = Self("participant", domains: [.action], ranges: [.organization, .person])

    public static let partySize: Self = Self("partySize", domains: [.foodEstablishmentReservation, .taxiReservation], ranges: [.integer, .quantitativeValue])

    public static let passengerPriorityStatus: Self = Self("passengerPriorityStatus", domains: [.flightReservation], ranges: [.qualitativeValue, .text])

    public static let passengerSequenceNumber: Self = Self("passengerSequenceNumber", domains: [.flightReservation], ranges: [.text])

    public static let pathophysiology: Self = Self("pathophysiology", domains: [.medicalCondition, .physicalActivity], ranges: [.text])

    public static let pattern: Self = Self("pattern", domains: [.creativeWork, .product], ranges: [.definedTerm, .text])

    public static let payload: Self = Self("payload", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let paymentAccepted: Self = Self("paymentAccepted", domains: [.localBusiness], ranges: [.text])

    public static let paymentDue: Self = Self("paymentDue", domains: [.invoice, .order], ranges: [.dateTime])

    public static let paymentDueDate: Self = Self("paymentDueDate", domains: [.invoice, .order], ranges: [.date, .dateTime])

    public static let paymentMethod: Self = Self("paymentMethod", domains: [.invoice, .order], ranges: [.paymentMethod, .text])

    public static let paymentMethodId: Self = Self("paymentMethodId", domains: [.invoice, .order], ranges: [.text])

    public static let paymentMethodType: Self = Self("paymentMethodType", domains: [.paymentMethod], ranges: [.paymentMethodType])

    public static let paymentStatus: Self = Self("paymentStatus", domains: [.invoice], ranges: [.paymentStatusType, .text])

    public static let paymentUrl: Self = Self("paymentUrl", domains: [.order], ranges: [.url])

    public static let penciler: Self = Self("penciler", domains: [.comicIssue, .comicStory, .visualArtwork], ranges: [.person])

    public static let percentile10: Self = Self("percentile10", domains: [.quantitativeValueDistribution], ranges: [.number])

    public static let percentile25: Self = Self("percentile25", domains: [.quantitativeValueDistribution], ranges: [.number])

    public static let percentile75: Self = Self("percentile75", domains: [.quantitativeValueDistribution], ranges: [.number])

    public static let percentile90: Self = Self("percentile90", domains: [.quantitativeValueDistribution], ranges: [.number])

    public static let performTime: Self = Self("performTime", domains: [.howTo, .howToDirection], ranges: [.duration])

    public static let performer: Self = Self("performer", domains: [.event], ranges: [.organization, .person])

    public static let performerIn: Self = Self("performerIn", domains: [.person], ranges: [.event])

    public static let performers: Self = Self("performers", domains: [.event], ranges: [.organization, .person])

    public static let permissionType: Self = Self("permissionType", domains: [.digitalDocumentPermission], ranges: [.digitalDocumentPermissionType])

    public static let permissions: Self = Self("permissions", domains: [.softwareApplication], ranges: [.text])

    public static let permitAudience: Self = Self("permitAudience", domains: [.permit], ranges: [.audience])

    public static let permittedUsage: Self = Self("permittedUsage", domains: [.accommodation], ranges: [.text])

    public static let petsAllowed: Self = Self("petsAllowed", domains: [.accommodation, .apartmentComplex, .floorPlan, .lodgingBusiness], ranges: [.boolean, .text])

    public static let phoneticText: Self = Self("phoneticText", domains: [.pronounceableText], ranges: [.text])

    public static let photo: Self = Self("photo", domains: [.place], ranges: [.imageObject, .photograph])

    public static let photos: Self = Self("photos", domains: [.place], ranges: [.imageObject, .photograph])

    public static let physicalRequirement: Self = Self("physicalRequirement", domains: [.jobPosting], ranges: [.definedTerm, .text, .url])

    public static let physiologicalBenefits: Self = Self("physiologicalBenefits", domains: [.diet], ranges: [.text])

    public static let pickupLocation: Self = Self("pickupLocation", domains: [.rentalCarReservation, .taxiReservation], ranges: [.place])

    public static let pickupTime: Self = Self("pickupTime", domains: [.rentalCarReservation, .taxiReservation], ranges: [.dateTime])

    public static let playMode: Self = Self("playMode", domains: [.videoGame, .videoGameSeries], ranges: [.gamePlayMode])

    public static let playerType: Self = Self("playerType", domains: [.mediaObject], ranges: [.text])

    public static let playersOnline: Self = Self("playersOnline", domains: [.gameServer], ranges: [.integer])

    public static let polygon: Self = Self("polygon", domains: [.geoShape], ranges: [.text])

    public static let populationType: Self = Self("populationType", domains: [.statisticalPopulation, .statisticalVariable], ranges: [.`class`])

    public static let position: Self = Self("position", domains: [.creativeWork, .listItem], ranges: [.integer, .text])

    public static let positiveNotes: Self = Self("positiveNotes", domains: [.product, .review], ranges: [.itemList, .listItem, .text, .webContent])

    public static let possibleComplication: Self = Self("possibleComplication", domains: [.medicalCondition], ranges: [.text])

    public static let possibleTreatment: Self = Self("possibleTreatment", domains: [.medicalCondition, .medicalSignOrSymptom], ranges: [.drug, .drugClass, .lifestyleModification, .medicalTherapy])

    public static let postOfficeBoxNumber: Self = Self("postOfficeBoxNumber", domains: [.postalAddress], ranges: [.text])

    public static let postOp: Self = Self("postOp", domains: [.medicalDevice], ranges: [.text])

    public static let postalCode: Self = Self("postalCode", domains: [.definedRegion, .geoCoordinates, .geoShape, .postalAddress], ranges: [.text])

    public static let postalCodeBegin: Self = Self("postalCodeBegin", domains: [.postalCodeRangeSpecification], ranges: [.text])

    public static let postalCodeEnd: Self = Self("postalCodeEnd", domains: [.postalCodeRangeSpecification], ranges: [.text])

    public static let postalCodePrefix: Self = Self("postalCodePrefix", domains: [.definedRegion], ranges: [.text])

    public static let postalCodeRange: Self = Self("postalCodeRange", domains: [.definedRegion], ranges: [.postalCodeRangeSpecification])

    public static let potentialAction: Self = Self("potentialAction", domains: [.thing], ranges: [.action])

    public static let potentialUse: Self = Self("potentialUse", domains: [.chemicalSubstance, .molecularEntity], ranges: [.definedTerm])

    public static let practicesAt: Self = Self("practicesAt", domains: [.individualPhysician], ranges: [.medicalOrganization])

    public static let preOp: Self = Self("preOp", domains: [.medicalDevice], ranges: [.text])

    public static let predecessorOf: Self = Self("predecessorOf", domains: [.productModel], ranges: [.productModel])

    public static let pregnancyCategory: Self = Self("pregnancyCategory", domains: [.drug], ranges: [.drugPregnancyCategory])

    public static let pregnancyWarning: Self = Self("pregnancyWarning", domains: [.drug], ranges: [.text])

    public static let prepTime: Self = Self("prepTime", domains: [.howTo, .howToDirection], ranges: [.duration])

    public static let preparation: Self = Self("preparation", domains: [.medicalProcedure], ranges: [.medicalEntity, .text])

    public static let prescribingInfo: Self = Self("prescribingInfo", domains: [.drug], ranges: [.url])

    public static let prescriptionStatus: Self = Self("prescriptionStatus", domains: [.drug], ranges: [.drugPrescriptionStatus, .text])

    public static let previousItem: Self = Self("previousItem", domains: [.listItem], ranges: [.listItem])

    public static let previousStartDate: Self = Self("previousStartDate", domains: [.event], ranges: [.date, .dateTime])

    public static let price: Self = Self("price", domains: [.donateAction, .offer, .priceSpecification, .tradeAction], ranges: [.number, .text])

    public static let priceComponent: Self = Self("priceComponent", domains: [.compoundPriceSpecification], ranges: [.priceSpecification])

    public static let priceComponentType: Self = Self("priceComponentType", domains: [.unitPriceSpecification], ranges: [.priceComponentTypeEnumeration])

    public static let priceCurrency: Self = Self("priceCurrency", domains: [.donateAction, .offer, .priceSpecification, .reservation, .ticket, .tradeAction], ranges: [.text])

    public static let priceRange: Self = Self("priceRange", domains: [.localBusiness], ranges: [.text])

    public static let priceSpecification: Self = Self("priceSpecification", domains: [.demand, .donateAction, .offer, .tradeAction], ranges: [.priceSpecification])

    public static let priceType: Self = Self("priceType", domains: [.compoundPriceSpecification, .unitPriceSpecification], ranges: [.priceTypeEnumeration, .text])

    public static let priceValidUntil: Self = Self("priceValidUntil", domains: [.offer], ranges: [.date])

    public static let primaryImageOfPage: Self = Self("primaryImageOfPage", domains: [.webPage], ranges: [.imageObject])

    public static let primaryPrevention: Self = Self("primaryPrevention", domains: [.medicalCondition], ranges: [.medicalTherapy])

    public static let printColumn: Self = Self("printColumn", domains: [.newsArticle], ranges: [.text])

    public static let printEdition: Self = Self("printEdition", domains: [.newsArticle], ranges: [.text])

    public static let printPage: Self = Self("printPage", domains: [.newsArticle], ranges: [.text])

    public static let printSection: Self = Self("printSection", domains: [.newsArticle], ranges: [.text])

    public static let procedure: Self = Self("procedure", domains: [.medicalDevice], ranges: [.text])

    public static let procedureType: Self = Self("procedureType", domains: [.medicalProcedure], ranges: [.medicalProcedureType])

    public static let processingTime: Self = Self("processingTime", domains: [.serviceChannel], ranges: [.duration])

    public static let processorRequirements: Self = Self("processorRequirements", domains: [.softwareApplication], ranges: [.text])

    public static let producer: Self = Self("producer", domains: [.creativeWork], ranges: [.organization, .person])

    public static let produces: Self = Self("produces", domains: [.service], ranges: [.thing])

    public static let productGroupID: Self = Self("productGroupID", domains: [.productGroup], ranges: [.text])

    public static let productID: Self = Self("productID", domains: [.product], ranges: [.text])

    public static let productReturnDays: Self = Self("productReturnDays", domains: [.productReturnPolicy], ranges: [.integer])

    public static let productReturnLink: Self = Self("productReturnLink", domains: [.productReturnPolicy], ranges: [.url])

    public static let productSupported: Self = Self("productSupported", domains: [.contactPoint], ranges: [.product, .text])

    public static let productionCompany: Self = Self(
        "productionCompany",
        domains: [.creativeWorkSeason, .episode, .mediaObject, .movie, .movieSeries, .radioSeries, .tvSeries, .videoGameSeries],
        ranges: [.organization]
    )

    public static let productionDate: Self = Self("productionDate", domains: [.product, .vehicle], ranges: [.date])

    public static let proficiencyLevel: Self = Self("proficiencyLevel", domains: [.techArticle], ranges: [.text])

    public static let program: Self = Self("program", domains: [.programMembership], ranges: [.memberProgram])

    public static let programMembershipUsed: Self = Self("programMembershipUsed", domains: [.reservation], ranges: [.programMembership])

    public static let programName: Self = Self("programName", domains: [.programMembership], ranges: [.text])

    public static let programPrerequisites: Self = Self(
        "programPrerequisites",
        domains: [.educationalOccupationalProgram],
        ranges: [.alignmentObject, .course, .educationalOccupationalCredential, .text]
    )

    public static let programType: Self = Self("programType", domains: [.educationalOccupationalProgram], ranges: [.definedTerm, .text])

    public static let programmingLanguage: Self = Self("programmingLanguage", domains: [.softwareSourceCode], ranges: [.computerLanguage, .text])

    public static let programmingModel: Self = Self("programmingModel", domains: [.apiReference], ranges: [.text])

    public static let pronouns: Self = Self("pronouns", domains: [.person], ranges: [.definedTerm, .structuredValue, .text])

    public static let propertyID: Self = Self("propertyID", domains: [.propertyValue], ranges: [.text, .url])

    public static let proprietaryName: Self = Self("proprietaryName", domains: [.dietarySupplement, .drug], ranges: [.text])

    public static let proteinContent: Self = Self("proteinContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let provider: Self = Self(
        "provider",
        domains: [.action, .creativeWork, .educationalOccupationalProgram, .financialIncentive, .invoice, .offerShippingDetails, .parcelDelivery, .reservation, .service, .trip],
        ranges: [.organization, .person]
    )

    public static let providerMobility: Self = Self("providerMobility", domains: [.service], ranges: [.text])

    public static let providesBroadcastService: Self = Self("providesBroadcastService", domains: [.broadcastChannel], ranges: [.broadcastService])

    public static let providesService: Self = Self("providesService", domains: [.serviceChannel], ranges: [.service])

    public static let publicAccess: Self = Self("publicAccess", domains: [.place], ranges: [.boolean])

    public static let publicTransportClosuresInfo: Self = Self("publicTransportClosuresInfo", domains: [.specialAnnouncement], ranges: [.url, .webContent])

    public static let publication: Self = Self("publication", domains: [.creativeWork], ranges: [.publicationEvent])

    public static let publicationType: Self = Self("publicationType", domains: [.medicalScholarlyArticle], ranges: [.text])

    public static let publishedBy: Self = Self("publishedBy", domains: [.publicationEvent], ranges: [.organization, .person])

    public static let publishedOn: Self = Self("publishedOn", domains: [.publicationEvent], ranges: [.broadcastService])

    public static let publisher: Self = Self("publisher", domains: [.creativeWork, .financialIncentive], ranges: [.organization, .person])

    public static let publisherImprint: Self = Self("publisherImprint", domains: [.creativeWork], ranges: [.organization])

    public static let publishingPrinciples: Self = Self("publishingPrinciples", domains: [.creativeWork, .organization, .person], ranges: [.creativeWork, .url])

    public static let purchaseDate: Self = Self("purchaseDate", domains: [.product, .vehicle], ranges: [.date])

    public static let purchasePriceLimit: Self = Self("purchasePriceLimit", domains: [.financialIncentive], ranges: [.monetaryAmount])

    public static let purchaseType: Self = Self("purchaseType", domains: [.financialIncentive], ranges: [.purchaseType])

    public static let qualifications: Self = Self("qualifications", domains: [.jobPosting, .occupation], ranges: [.credential, .text])

    public static let qualifiedExpense: Self = Self("qualifiedExpense", domains: [.financialIncentive], ranges: [.incentiveQualifiedExpenseType])

    public static let quarantineGuidelines: Self = Self("quarantineGuidelines", domains: [.specialAnnouncement], ranges: [.url, .webContent])

    public static let query: Self = Self("query", domains: [.searchAction], ranges: [.text])

    public static let quest: Self = Self("quest", domains: [.game, .videoGameSeries], ranges: [.thing])

    public static let question: Self = Self("question", domains: [.askAction], ranges: [.question])

    public static let rangeIncludes: Self = Self("rangeIncludes", domains: [.property], ranges: [.`class`])

    public static let ratingCount: Self = Self("ratingCount", domains: [.aggregateRating], ranges: [.integer])

    public static let ratingExplanation: Self = Self("ratingExplanation", domains: [.rating], ranges: [.text])

    public static let ratingValue: Self = Self("ratingValue", domains: [.rating], ranges: [.number, .text])

    public static let readBy: Self = Self("readBy", domains: [.audiobook], ranges: [.person])

    public static let readonlyValue: Self = Self("readonlyValue", domains: [.propertyValueSpecification], ranges: [.boolean])

    public static let realEstateAgent: Self = Self("realEstateAgent", domains: [.rentAction], ranges: [.realEstateAgent])

    public static let recipe: Self = Self("recipe", domains: [.cookAction], ranges: [.recipe])

    public static let recipeCategory: Self = Self("recipeCategory", domains: [.recipe], ranges: [.text])

    public static let recipeCuisine: Self = Self("recipeCuisine", domains: [.recipe], ranges: [.text])

    public static let recipeIngredient: Self = Self("recipeIngredient", domains: [.recipe], ranges: [.itemList, .propertyValue, .text])

    public static let recipeInstructions: Self = Self("recipeInstructions", domains: [.recipe], ranges: [.creativeWork, .itemList, .text])

    public static let recipeYield: Self = Self("recipeYield", domains: [.recipe], ranges: [.quantitativeValue, .text])

    public static let recipient: Self = Self(
        "recipient",
        domains: [.authorizeAction, .communicateAction, .donateAction, .giveAction, .message, .payAction, .returnAction, .sendAction, .tipAction],
        ranges: [.audience, .contactPoint, .organization, .person]
    )

    public static let recognizedBy: Self = Self("recognizedBy", domains: [.credential], ranges: [.organization])

    public static let recognizingAuthority: Self = Self("recognizingAuthority", domains: [.medicalEntity], ranges: [.organization])

    public static let recommendationStrength: Self = Self("recommendationStrength", domains: [.medicalGuidelineRecommendation], ranges: [.text])

    public static let recommendedIntake: Self = Self("recommendedIntake", domains: [.dietarySupplement], ranges: [.recommendedDoseSchedule])

    public static let recordLabel: Self = Self("recordLabel", domains: [.musicRelease], ranges: [.organization])

    public static let recordedAs: Self = Self("recordedAs", domains: [.musicComposition], ranges: [.musicRecording])

    public static let recordedAt: Self = Self("recordedAt", domains: [.creativeWork], ranges: [.event])

    public static let recordedIn: Self = Self("recordedIn", domains: [.event], ranges: [.creativeWork])

    public static let recordingOf: Self = Self("recordingOf", domains: [.musicRecording], ranges: [.musicComposition])

    public static let recourseLoan: Self = Self("recourseLoan", domains: [.loanOrCredit], ranges: [.boolean])

    public static let recycledContentPercentage: Self = Self("recycledContentPercentage", domains: [.product], ranges: [.number])

    public static let referee: Self = Self("referee", domains: [.sportsEvent], ranges: [.person])

    public static let referenceQuantity: Self = Self("referenceQuantity", domains: [.unitPriceSpecification], ranges: [.quantitativeValue])

    public static let referencesOrder: Self = Self("referencesOrder", domains: [.invoice], ranges: [.order])

    public static let refundType: Self = Self("refundType", domains: [.merchantReturnPolicy, .merchantReturnPolicySeasonalOverride], ranges: [.refundTypeEnumeration])

    public static let regionDrained: Self = Self("regionDrained", domains: [.lymphaticVessel, .vein], ranges: [.anatomicalStructure, .anatomicalSystem])

    public static let regionsAllowed: Self = Self("regionsAllowed", domains: [.mediaObject], ranges: [.place])

    public static let relatedAnatomy: Self = Self("relatedAnatomy", domains: [.superficialAnatomy], ranges: [.anatomicalStructure, .anatomicalSystem])

    public static let relatedCondition: Self = Self("relatedCondition", domains: [.anatomicalStructure, .anatomicalSystem, .superficialAnatomy], ranges: [.medicalCondition])

    public static let relatedDrug: Self = Self("relatedDrug", domains: [.drug], ranges: [.drug])

    public static let relatedLink: Self = Self("relatedLink", domains: [.webPage], ranges: [.url])

    public static let relatedStructure: Self = Self("relatedStructure", domains: [.anatomicalSystem], ranges: [.anatomicalStructure])

    public static let relatedTherapy: Self = Self("relatedTherapy", domains: [.anatomicalStructure, .anatomicalSystem, .superficialAnatomy], ranges: [.medicalTherapy])

    public static let relatedTo: Self = Self("relatedTo", domains: [.person], ranges: [.person])

    public static let releaseDate: Self = Self("releaseDate", domains: [.product], ranges: [.date])

    public static let releaseNotes: Self = Self("releaseNotes", domains: [.softwareApplication], ranges: [.text, .url])

    public static let releaseOf: Self = Self("releaseOf", domains: [.musicRelease], ranges: [.musicAlbum])

    public static let releasedEvent: Self = Self("releasedEvent", domains: [.creativeWork], ranges: [.publicationEvent])

    public static let relevantOccupation: Self = Self("relevantOccupation", domains: [.jobPosting], ranges: [.occupation])

    public static let relevantSpecialty: Self = Self("relevantSpecialty", domains: [.medicalEntity], ranges: [.medicalSpecialty])

    public static let remainingAttendeeCapacity: Self = Self("remainingAttendeeCapacity", domains: [.event], ranges: [.integer])

    public static let renegotiableLoan: Self = Self("renegotiableLoan", domains: [.loanOrCredit], ranges: [.boolean])

    public static let repeatCount: Self = Self("repeatCount", domains: [.schedule], ranges: [.integer])

    public static let repeatFrequency: Self = Self("repeatFrequency", domains: [.schedule], ranges: [.duration, .text])

    public static let repetitions: Self = Self("repetitions", domains: [.exercisePlan], ranges: [.number, .quantitativeValue])

    public static let replacee: Self = Self("replacee", domains: [.replaceAction], ranges: [.thing])

    public static let replacer: Self = Self("replacer", domains: [.replaceAction], ranges: [.thing])

    public static let replyToUrl: Self = Self("replyToUrl", domains: [.userComments], ranges: [.url])

    public static let reportNumber: Self = Self("reportNumber", domains: [.report], ranges: [.text])

    public static let representativeOfPage: Self = Self("representativeOfPage", domains: [.imageObject], ranges: [.boolean])

    public static let requiredCollateral: Self = Self("requiredCollateral", domains: [.loanOrCredit], ranges: [.text, .thing])

    public static let requiredGender: Self = Self("requiredGender", domains: [.peopleAudience], ranges: [.text])

    public static let requiredMaxAge: Self = Self("requiredMaxAge", domains: [.peopleAudience], ranges: [.integer])

    public static let requiredMinAge: Self = Self("requiredMinAge", domains: [.peopleAudience], ranges: [.integer])

    public static let requiredQuantity: Self = Self("requiredQuantity", domains: [.howToItem], ranges: [.number, .quantitativeValue, .text])

    public static let requirements: Self = Self("requirements", domains: [.softwareApplication], ranges: [.text, .url])

    public static let requiresSubscription: Self = Self("requiresSubscription", domains: [.actionAccessSpecification, .mediaObject], ranges: [.boolean, .mediaSubscription])

    public static let reservationFor: Self = Self("reservationFor", domains: [.reservation], ranges: [.thing])

    public static let reservationId: Self = Self("reservationId", domains: [.reservation], ranges: [.text])

    public static let reservationStatus: Self = Self("reservationStatus", domains: [.reservation], ranges: [.reservationStatusType])

    public static let reservedTicket: Self = Self("reservedTicket", domains: [.reservation], ranges: [.ticket])

    public static let responsibilities: Self = Self("responsibilities", domains: [.jobPosting, .occupation], ranges: [.text])

    public static let restPeriods: Self = Self("restPeriods", domains: [.exercisePlan], ranges: [.quantitativeValue, .text])

    public static let restockingFee: Self = Self("restockingFee", domains: [.merchantReturnPolicy, .merchantReturnPolicySeasonalOverride], ranges: [.monetaryAmount, .number])

    public static let result: Self = Self("result", domains: [.action], ranges: [.thing])

    public static let resultComment: Self = Self("resultComment", domains: [.commentAction, .replyAction], ranges: [.comment])

    public static let resultReview: Self = Self("resultReview", domains: [.reviewAction], ranges: [.review])

    public static let returnFees: Self = Self("returnFees", domains: [.merchantReturnPolicy, .merchantReturnPolicySeasonalOverride], ranges: [.returnFeesEnumeration])

    public static let returnLabelSource: Self = Self("returnLabelSource", domains: [.merchantReturnPolicy], ranges: [.returnLabelSourceEnumeration])

    public static let returnMethod: Self = Self("returnMethod", domains: [.merchantReturnPolicy, .merchantReturnPolicySeasonalOverride], ranges: [.returnMethodEnumeration])

    public static let returnPolicyCategory: Self = Self("returnPolicyCategory", domains: [.merchantReturnPolicy, .merchantReturnPolicySeasonalOverride], ranges: [.merchantReturnEnumeration])

    public static let returnPolicyCountry: Self = Self("returnPolicyCountry", domains: [.merchantReturnPolicy], ranges: [.country, .text])

    public static let returnPolicySeasonalOverride: Self = Self("returnPolicySeasonalOverride", domains: [.merchantReturnPolicy], ranges: [.merchantReturnPolicySeasonalOverride])

    public static let returnShippingFeesAmount: Self = Self("returnShippingFeesAmount", domains: [.merchantReturnPolicy, .merchantReturnPolicySeasonalOverride], ranges: [.monetaryAmount])

    public static let review: Self = Self("review", domains: [.brand, .creativeWork, .event, .offer, .organization, .place, .product, .service], ranges: [.review])

    public static let reviewAspect: Self = Self("reviewAspect", domains: [.guide, .rating, .review], ranges: [.structuredValue, .text])

    public static let reviewBody: Self = Self("reviewBody", domains: [.review], ranges: [.text])

    public static let reviewCount: Self = Self("reviewCount", domains: [.aggregateRating], ranges: [.integer])

    public static let reviewRating: Self = Self("reviewRating", domains: [.review], ranges: [.rating])

    public static let reviewedBy: Self = Self("reviewedBy", domains: [.webPage], ranges: [.organization, .person])

    public static let reviews: Self = Self("reviews", domains: [.creativeWork, .offer, .organization, .place, .product], ranges: [.review])

    public static let riskFactor: Self = Self("riskFactor", domains: [.medicalCondition], ranges: [.medicalRiskFactor])

    public static let risks: Self = Self("risks", domains: [.diet], ranges: [.text])

    public static let roleName: Self = Self("roleName", domains: [.role], ranges: [.text, .url])

    public static let roofLoad: Self = Self("roofLoad", domains: [.busOrCoach, .car], ranges: [.quantitativeValue])

    public static let rsvpResponse: Self = Self("rsvpResponse", domains: [.rsvpAction], ranges: [.rsvpResponseType])

    public static let runsTo: Self = Self("runsTo", domains: [.lymphaticVessel], ranges: [.vessel])

    public static let runtime: Self = Self("runtime", domains: [.softwareSourceCode], ranges: [.text])

    public static let runtimePlatform: Self = Self("runtimePlatform", domains: [.softwareApplication, .softwareSourceCode], ranges: [.runtimePlatform, .text])

    public static let rxcui: Self = Self("rxcui", domains: [.drug], ranges: [.text])

    public static let safetyConsideration: Self = Self("safetyConsideration", domains: [.dietarySupplement], ranges: [.text])

    public static let salaryCurrency: Self = Self("salaryCurrency", domains: [.employeeRole, .jobPosting], ranges: [.text])

    public static let salaryUponCompletion: Self = Self("salaryUponCompletion", domains: [.educationalOccupationalProgram], ranges: [.monetaryAmountDistribution])

    public static let sameAs: Self = Self("sameAs", domains: [.thing], ranges: [.url])

    public static let sampleType: Self = Self("sampleType", domains: [.softwareSourceCode], ranges: [.text])

    public static let saturatedFatContent: Self = Self("saturatedFatContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let scheduleTimezone: Self = Self("scheduleTimezone", domains: [.schedule], ranges: [.text])

    public static let scheduledPaymentDate: Self = Self("scheduledPaymentDate", domains: [.invoice], ranges: [.date])

    public static let scheduledTime: Self = Self("scheduledTime", domains: [.planAction], ranges: [.date, .dateTime])

    public static let schemaVersion: Self = Self("schemaVersion", domains: [.creativeWork], ranges: [.text, .url])

    public static let schoolClosuresInfo: Self = Self("schoolClosuresInfo", domains: [.specialAnnouncement], ranges: [.url, .webContent])

    public static let screenCount: Self = Self("screenCount", domains: [.movieTheater], ranges: [.number])

    public static let screenshot: Self = Self("screenshot", domains: [.softwareApplication], ranges: [.imageObject, .url])

    public static let sdDatePublished: Self = Self("sdDatePublished", domains: [.creativeWork], ranges: [.date])

    public static let sdLicense: Self = Self("sdLicense", domains: [.creativeWork], ranges: [.creativeWork, .url])

    public static let sdPublisher: Self = Self("sdPublisher", domains: [.creativeWork], ranges: [.organization, .person])

    public static let season: Self = Self("season", domains: [.radioSeries, .tvSeries, .videoGameSeries], ranges: [.creativeWorkSeason, .url])

    public static let seasonNumber: Self = Self("seasonNumber", domains: [.creativeWorkSeason], ranges: [.integer, .text])

    public static let seasonalOverride: Self = Self("seasonalOverride", domains: [.shippingConditions], ranges: [.openingHoursSpecification])

    public static let seasons: Self = Self("seasons", domains: [.radioSeries, .tvSeries, .videoGameSeries], ranges: [.creativeWorkSeason])

    public static let seatNumber: Self = Self("seatNumber", domains: [.seat], ranges: [.text])

    public static let seatRow: Self = Self("seatRow", domains: [.seat], ranges: [.text])

    public static let seatSection: Self = Self("seatSection", domains: [.seat], ranges: [.text])

    public static let seatingCapacity: Self = Self("seatingCapacity", domains: [.vehicle], ranges: [.number, .quantitativeValue])

    public static let seatingType: Self = Self("seatingType", domains: [.seat], ranges: [.qualitativeValue, .text])

    public static let secondaryPrevention: Self = Self("secondaryPrevention", domains: [.medicalCondition], ranges: [.drug, .drugClass, .lifestyleModification, .medicalTherapy])

    public static let securityClearanceRequirement: Self = Self("securityClearanceRequirement", domains: [.jobPosting], ranges: [.text, .url])

    public static let securityScreening: Self = Self("securityScreening", domains: [.flightReservation], ranges: [.text])

    public static let seeks: Self = Self("seeks", domains: [.organization, .person], ranges: [.demand])

    public static let seller: Self = Self("seller", domains: [.buyAction, .demand, .flight, .offer, .order], ranges: [.organization, .person])

    public static let sender: Self = Self("sender", domains: [.message, .receiveAction], ranges: [.audience, .organization, .person])

    public static let sensoryRequirement: Self = Self("sensoryRequirement", domains: [.jobPosting], ranges: [.definedTerm, .text, .url])

    public static let sensoryUnit: Self = Self("sensoryUnit", domains: [.nerve], ranges: [.anatomicalStructure, .superficialAnatomy])

    public static let serialNumber: Self = Self("serialNumber", domains: [.demand, .individualProduct, .offer], ranges: [.text])

    public static let seriousAdverseOutcome: Self = Self("seriousAdverseOutcome", domains: [.medicalDevice, .medicalTherapy], ranges: [.medicalEntity])

    public static let serverStatus: Self = Self("serverStatus", domains: [.gameServer], ranges: [.gameServerStatus])

    public static let servesCuisine: Self = Self("servesCuisine", domains: [.foodEstablishment], ranges: [.text])

    public static let serviceArea: Self = Self("serviceArea", domains: [.contactPoint, .organization, .service], ranges: [.administrativeArea, .geoShape, .place])

    public static let serviceAudience: Self = Self("serviceAudience", domains: [.service], ranges: [.audience])

    public static let serviceLocation: Self = Self("serviceLocation", domains: [.serviceChannel], ranges: [.place])

    public static let serviceOperator: Self = Self("serviceOperator", domains: [.governmentService], ranges: [.organization])

    public static let serviceOutput: Self = Self("serviceOutput", domains: [.service], ranges: [.thing])

    public static let servicePhone: Self = Self("servicePhone", domains: [.serviceChannel], ranges: [.contactPoint])

    public static let servicePostalAddress: Self = Self("servicePostalAddress", domains: [.serviceChannel], ranges: [.postalAddress])

    public static let serviceSmsNumber: Self = Self("serviceSmsNumber", domains: [.serviceChannel], ranges: [.contactPoint])

    public static let serviceType: Self = Self("serviceType", domains: [.service], ranges: [.governmentBenefitsType, .text])

    public static let serviceUrl: Self = Self("serviceUrl", domains: [.serviceChannel], ranges: [.url])

    public static let servingSize: Self = Self("servingSize", domains: [.nutritionInformation], ranges: [.text])

    public static let sha256: Self = Self("sha256", domains: [.mediaObject], ranges: [.text])

    public static let sharedContent: Self = Self("sharedContent", domains: [.comment, .socialMediaPosting], ranges: [.creativeWork])

    public static let shippingConditions: Self = Self("shippingConditions", domains: [.shippingService], ranges: [.shippingConditions])

    public static let shippingDestination: Self = Self(
        "shippingDestination",
        domains: [.deliveryTimeSettings, .offerShippingDetails, .shippingConditions, .shippingRateSettings],
        ranges: [.definedRegion]
    )

    public static let shippingDetails: Self = Self("shippingDetails", domains: [.offer], ranges: [.offerShippingDetails])

    public static let shippingLabel: Self = Self("shippingLabel", domains: [.offerShippingDetails, .shippingRateSettings], ranges: [.text])

    public static let shippingOrigin: Self = Self("shippingOrigin", domains: [.offerShippingDetails, .shippingConditions], ranges: [.definedRegion])

    public static let shippingRate: Self = Self("shippingRate", domains: [.offerShippingDetails, .shippingConditions, .shippingRateSettings], ranges: [.monetaryAmount, .shippingRateSettings])

    public static let shippingSettingsLink: Self = Self("shippingSettingsLink", domains: [.offerShippingDetails], ranges: [.url])

    public static let sibling: Self = Self("sibling", domains: [.person], ranges: [.person])

    public static let siblings: Self = Self("siblings", domains: [.person], ranges: [.person])

    public static let signDetected: Self = Self("signDetected", domains: [.medicalTest], ranges: [.medicalSign])

    public static let signOrSymptom: Self = Self("signOrSymptom", domains: [.medicalCondition], ranges: [.medicalSignOrSymptom])

    public static let significance: Self = Self("significance", domains: [.superficialAnatomy], ranges: [.text])

    public static let significantLink: Self = Self("significantLink", domains: [.webPage], ranges: [.url])

    public static let significantLinks: Self = Self("significantLinks", domains: [.webPage], ranges: [.url])

    public static let size: Self = Self("size", domains: [.creativeWork, .product], ranges: [.definedTerm, .quantitativeValue, .sizeSpecification, .text])

    public static let sizeGroup: Self = Self("sizeGroup", domains: [.sizeSpecification], ranges: [.sizeGroupEnumeration, .text])

    public static let sizeSystem: Self = Self("sizeSystem", domains: [.sizeSpecification], ranges: [.sizeSystemEnumeration, .text])

    public static let skills: Self = Self("skills", domains: [.jobPosting, .occupation, .organization, .person], ranges: [.definedTerm, .text])

    public static let sku: Self = Self("sku", domains: [.demand, .offer, .product], ranges: [.text])

    public static let slogan: Self = Self("slogan", domains: [.brand, .organization, .place, .product, .service], ranges: [.text])

    public static let smiles: Self = Self("smiles", domains: [.molecularEntity], ranges: [.text])

    public static let smokingAllowed: Self = Self("smokingAllowed", domains: [.place], ranges: [.boolean])

    public static let sodiumContent: Self = Self("sodiumContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let softwareAddOn: Self = Self("softwareAddOn", domains: [.softwareApplication], ranges: [.softwareApplication])

    public static let softwareHelp: Self = Self("softwareHelp", domains: [.softwareApplication], ranges: [.creativeWork])

    public static let softwareRequirements: Self = Self("softwareRequirements", domains: [.softwareApplication], ranges: [.softwareApplication, .text, .url])

    public static let softwareVersion: Self = Self("softwareVersion", domains: [.softwareApplication], ranges: [.text])

    public static let source: Self = Self("source", domains: [.instantaneousEvent], ranges: [.thing])

    public static let sourceOrganization: Self = Self("sourceOrganization", domains: [.creativeWork], ranges: [.organization])

    public static let sourcedFrom: Self = Self("sourcedFrom", domains: [.nerve], ranges: [.brainStructure])

    public static let spatial: Self = Self("spatial", domains: [.creativeWork], ranges: [.place])

    public static let spatialCoverage: Self = Self("spatialCoverage", domains: [.creativeWork], ranges: [.place])

    public static let speakable: Self = Self("speakable", domains: [.article, .webPage], ranges: [.speakableSpecification, .url])

    public static let specialCommitments: Self = Self("specialCommitments", domains: [.jobPosting], ranges: [.text])

    public static let specialOpeningHoursSpecification: Self = Self("specialOpeningHoursSpecification", domains: [.place], ranges: [.openingHoursSpecification])

    public static let specialty: Self = Self("specialty", domains: [.webPage], ranges: [.specialty])

    public static let specification: Self = Self("specification", domains: [.product], ranges: [.propertyValue])

    public static let speechToTextMarkup: Self = Self("speechToTextMarkup", domains: [.pronounceableText], ranges: [.text])

    public static let speed: Self = Self("speed", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let spokenByCharacter: Self = Self("spokenByCharacter", domains: [.quotation], ranges: [.organization, .person])

    public static let sponsor: Self = Self("sponsor", domains: [.creativeWork, .event, .grant, .medicalStudy, .organization, .person], ranges: [.organization, .person])

    public static let sport: Self = Self("sport", domains: [.sportsEvent, .sportsOrganization], ranges: [.text, .url])

    public static let sportsActivityLocation: Self = Self("sportsActivityLocation", domains: [.exerciseAction], ranges: [.sportsActivityLocation])

    public static let sportsEvent: Self = Self("sportsEvent", domains: [.exerciseAction], ranges: [.sportsEvent])

    public static let sportsTeam: Self = Self("sportsTeam", domains: [.exerciseAction], ranges: [.sportsTeam])

    public static let spouse: Self = Self("spouse", domains: [.person], ranges: [.person])

    public static let stage: Self = Self("stage", domains: [.medicalCondition], ranges: [.medicalConditionStage])

    public static let stageAsNumber: Self = Self("stageAsNumber", domains: [.medicalConditionStage], ranges: [.number])

    public static let starRating: Self = Self("starRating", domains: [.foodEstablishment, .lodgingBusiness], ranges: [.rating])

    public static let startDate: Self = Self(
        "startDate",
        domains: [.creativeWorkSeason, .creativeWorkSeries, .datedMoneySpecification, .educationalOccupationalProgram, .event, .merchantReturnPolicySeasonalOverride, .role, .schedule],
        ranges: [.date, .dateTime]
    )

    public static let startOffset: Self = Self("startOffset", domains: [.clip, .seekToAction], ranges: [.hyperTocEntry, .number])

    public static let startTime: Self = Self("startTime", domains: [.action, .foodEstablishmentReservation, .interactionCounter, .mediaObject, .schedule], ranges: [.dateTime, .time])

    public static let statType: Self = Self("statType", domains: [.statisticalVariable], ranges: [.property, .text, .url])

    public static let status: Self = Self("status", domains: [.medicalCondition, .medicalProcedure, .medicalStudy], ranges: [.eventStatusType, .medicalStudyStatus, .text])

    public static let steeringPosition: Self = Self("steeringPosition", domains: [.vehicle], ranges: [.steeringPositionValue])

    public static let step: Self = Self("step", domains: [.howTo], ranges: [.creativeWork, .howToSection, .howToStep, .text])

    public static let stepValue: Self = Self("stepValue", domains: [.propertyValueSpecification], ranges: [.number])

    public static let steps: Self = Self("steps", domains: [.howTo, .howToSection], ranges: [.creativeWork, .itemList, .text])

    public static let storageRequirements: Self = Self("storageRequirements", domains: [.softwareApplication], ranges: [.text, .url])

    public static let streetAddress: Self = Self("streetAddress", domains: [.postalAddress], ranges: [.text])

    public static let strengthUnit: Self = Self("strengthUnit", domains: [.drugStrength], ranges: [.text])

    public static let strengthValue: Self = Self("strengthValue", domains: [.drugStrength], ranges: [.number])

    public static let structuralClass: Self = Self("structuralClass", domains: [.joint], ranges: [.text])

    public static let study: Self = Self("study", domains: [.medicalEntity], ranges: [.medicalStudy])

    public static let studyDesign: Self = Self("studyDesign", domains: [.medicalObservationalStudy], ranges: [.medicalObservationalStudyDesign])

    public static let studyLocation: Self = Self("studyLocation", domains: [.medicalStudy], ranges: [.administrativeArea])

    public static let studySubject: Self = Self("studySubject", domains: [.medicalStudy], ranges: [.medicalEntity])

    public static let subEvent: Self = Self("subEvent", domains: [.event], ranges: [.event])

    public static let subEvents: Self = Self("subEvents", domains: [.event], ranges: [.event])

    public static let subOrganization: Self = Self("subOrganization", domains: [.organization], ranges: [.organization])

    public static let subReservation: Self = Self("subReservation", domains: [.reservationPackage], ranges: [.reservation])

    public static let subStageSuffix: Self = Self("subStageSuffix", domains: [.medicalConditionStage], ranges: [.text])

    public static let subStructure: Self = Self("subStructure", domains: [.anatomicalStructure], ranges: [.anatomicalStructure])

    public static let subTest: Self = Self("subTest", domains: [.medicalTestPanel], ranges: [.medicalTest])

    public static let subTrip: Self = Self("subTrip", domains: [.trip], ranges: [.trip])

    public static let subjectOf: Self = Self("subjectOf", domains: [.thing], ranges: [.creativeWork, .event])

    public static let substanceOfConcern: Self = Self("substanceOfConcern", domains: [.product], ranges: [.chemicalSubstance, .definedTerm, .text, .url])

    public static let subtitleLanguage: Self = Self("subtitleLanguage", domains: [.broadcastEvent, .movie, .screeningEvent, .tvEpisode], ranges: [.language, .text])

    public static let successorOf: Self = Self("successorOf", domains: [.productModel], ranges: [.productModel])

    public static let sugarContent: Self = Self("sugarContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let suggestedAge: Self = Self("suggestedAge", domains: [.peopleAudience, .sizeSpecification], ranges: [.quantitativeValue])

    public static let suggestedAnswer: Self = Self("suggestedAnswer", domains: [.question], ranges: [.answer, .itemList])

    public static let suggestedGender: Self = Self("suggestedGender", domains: [.peopleAudience, .sizeSpecification], ranges: [.genderType, .text])

    public static let suggestedMaxAge: Self = Self("suggestedMaxAge", domains: [.peopleAudience], ranges: [.number])

    public static let suggestedMeasurement: Self = Self("suggestedMeasurement", domains: [.peopleAudience, .sizeSpecification], ranges: [.quantitativeValue])

    public static let suggestedMinAge: Self = Self("suggestedMinAge", domains: [.peopleAudience], ranges: [.number])

    public static let suitableForDiet: Self = Self("suitableForDiet", domains: [.menuItem, .recipe], ranges: [.diet, .restrictedDiet])

    public static let superEvent: Self = Self("superEvent", domains: [.event], ranges: [.event])

    public static let supersededBy: Self = Self("supersededBy", domains: [.`class`, .enumeration, .property], ranges: [.`class`, .enumeration, .property])

    public static let supply: Self = Self("supply", domains: [.howTo, .howToDirection], ranges: [.howToSupply, .text])

    public static let supplyTo: Self = Self("supplyTo", domains: [.artery], ranges: [.anatomicalStructure])

    public static let supportingData: Self = Self("supportingData", domains: [.softwareApplication], ranges: [.dataFeed])

    public static let surface: Self = Self("surface", domains: [.visualArtwork], ranges: [.text, .url])

    public static let syllabusSections: Self = Self("syllabusSections", domains: [.course], ranges: [.syllabus])

    public static let target: Self = Self("target", domains: [.action], ranges: [.entryPoint, .url])

    public static let targetCollection: Self = Self("targetCollection", domains: [.updateAction], ranges: [.thing])

    public static let targetDescription: Self = Self("targetDescription", domains: [.alignmentObject], ranges: [.text])

    public static let targetName: Self = Self("targetName", domains: [.alignmentObject], ranges: [.text])

    public static let targetPlatform: Self = Self("targetPlatform", domains: [.apiReference], ranges: [.text])

    public static let targetPopulation: Self = Self("targetPopulation", domains: [.dietarySupplement, .doseSchedule], ranges: [.text])

    public static let targetProduct: Self = Self("targetProduct", domains: [.softwareSourceCode], ranges: [.softwareApplication])

    public static let targetUrl: Self = Self("targetUrl", domains: [.alignmentObject], ranges: [.url])

    public static let taxID: Self = Self("taxID", domains: [.organization, .person], ranges: [.text])

    public static let taxonRank: Self = Self("taxonRank", domains: [.taxon], ranges: [.propertyValue, .text, .url])

    public static let taxonomicRange: Self = Self("taxonomicRange", domains: [.bioChemEntity], ranges: [.definedTerm, .taxon, .text, .url])

    public static let teaches: Self = Self("teaches", domains: [.creativeWork, .educationEvent, .learningResource], ranges: [.definedTerm, .text])

    public static let telephone: Self = Self("telephone", domains: [.contactPoint, .organization, .person, .place], ranges: [.text])

    public static let temporal: Self = Self("temporal", domains: [.creativeWork], ranges: [.dateTime, .text])

    public static let temporalCoverage: Self = Self("temporalCoverage", domains: [.creativeWork], ranges: [.dateTime, .text, .url])

    public static let termCode: Self = Self("termCode", domains: [.definedTerm], ranges: [.text])

    public static let termDuration: Self = Self("termDuration", domains: [.educationalOccupationalProgram], ranges: [.duration])

    public static let termsOfService: Self = Self("termsOfService", domains: [.service], ranges: [.text, .url])

    public static let termsPerYear: Self = Self("termsPerYear", domains: [.educationalOccupationalProgram], ranges: [.number])

    public static let text: Self = Self("text", domains: [.creativeWork], ranges: [.text])

    public static let textValue: Self = Self("textValue", domains: [.pronounceableText], ranges: [.text])

    public static let thumbnail: Self = Self("thumbnail", domains: [.creativeWork], ranges: [.imageObject])

    public static let thumbnailUrl: Self = Self("thumbnailUrl", domains: [.creativeWork], ranges: [.url])

    public static let tickerSymbol: Self = Self("tickerSymbol", domains: [.corporation], ranges: [.text])

    public static let ticketNumber: Self = Self("ticketNumber", domains: [.ticket], ranges: [.text])

    public static let ticketToken: Self = Self("ticketToken", domains: [.ticket], ranges: [.text, .url])

    public static let ticketedSeat: Self = Self("ticketedSeat", domains: [.ticket], ranges: [.seat])

    public static let timeOfDay: Self = Self("timeOfDay", domains: [.educationalOccupationalProgram], ranges: [.text])

    public static let timeRequired: Self = Self("timeRequired", domains: [.creativeWork], ranges: [.duration])

    public static let timeToComplete: Self = Self("timeToComplete", domains: [.educationalOccupationalProgram], ranges: [.duration])

    public static let timestamp: Self = Self("timestamp", domains: [.instantaneousEvent], ranges: [.dateTime])

    public static let tissueSample: Self = Self("tissueSample", domains: [.pathologyTest], ranges: [.text])

    public static let title: Self = Self("title", domains: [.jobPosting], ranges: [.text])

    public static let titleEIDR: Self = Self("titleEIDR", domains: [.movie, .tvEpisode, .tvSeason, .tvSeries], ranges: [.text, .url])

    public static let toLocation: Self = Self("toLocation", domains: [.exerciseAction, .insertAction, .moveAction, .transferAction], ranges: [.place])

    public static let toRecipient: Self = Self("toRecipient", domains: [.message], ranges: [.audience, .contactPoint, .organization, .person])

    public static let tocContinuation: Self = Self("tocContinuation", domains: [.hyperTocEntry], ranges: [.hyperTocEntry])

    public static let tocEntry: Self = Self("tocEntry", domains: [.hyperToc], ranges: [.hyperTocEntry])

    public static let tongueWeight: Self = Self("tongueWeight", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let tool: Self = Self("tool", domains: [.howTo, .howToDirection], ranges: [.howToTool, .text])

    public static let torque: Self = Self("torque", domains: [.engineSpecification], ranges: [.quantitativeValue])

    public static let totalHistoricalEnrollment: Self = Self("totalHistoricalEnrollment", domains: [.course], ranges: [.integer])

    public static let totalJobOpenings: Self = Self("totalJobOpenings", domains: [.jobPosting], ranges: [.integer])

    public static let totalPaymentDue: Self = Self("totalPaymentDue", domains: [.invoice], ranges: [.monetaryAmount, .priceSpecification])

    public static let totalPrice: Self = Self("totalPrice", domains: [.reservation, .ticket], ranges: [.number, .priceSpecification, .text])

    public static let totalTime: Self = Self("totalTime", domains: [.howTo, .howToDirection], ranges: [.duration])

    public static let tourBookingPage: Self = Self("tourBookingPage", domains: [.accommodation, .apartmentComplex, .place], ranges: [.url])

    public static let touristType: Self = Self("touristType", domains: [.touristAttraction, .touristDestination, .touristTrip], ranges: [.audience, .text])

    public static let track: Self = Self("track", domains: [.musicGroup, .musicPlaylist], ranges: [.itemList, .musicRecording])

    public static let trackingNumber: Self = Self("trackingNumber", domains: [.parcelDelivery], ranges: [.text])

    public static let trackingUrl: Self = Self("trackingUrl", domains: [.parcelDelivery], ranges: [.url])

    public static let tracks: Self = Self("tracks", domains: [.musicGroup, .musicPlaylist], ranges: [.musicRecording])

    public static let trailer: Self = Self("trailer", domains: [.creativeWorkSeason, .episode, .movie, .movieSeries, .radioSeries, .tvSeries, .videoGame, .videoGameSeries], ranges: [.videoObject])

    public static let trailerWeight: Self = Self("trailerWeight", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let trainName: Self = Self("trainName", domains: [.trainTrip], ranges: [.text])

    public static let trainNumber: Self = Self("trainNumber", domains: [.trainTrip], ranges: [.text])

    public static let trainingSalary: Self = Self("trainingSalary", domains: [.educationalOccupationalProgram, .workBasedProgram], ranges: [.monetaryAmountDistribution])

    public static let transFatContent: Self = Self("transFatContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let transcript: Self = Self("transcript", domains: [.audioObject, .videoObject], ranges: [.text])

    public static let transitTime: Self = Self("transitTime", domains: [.shippingConditions, .shippingDeliveryTime], ranges: [.quantitativeValue, .servicePeriod])

    public static let transitTimeLabel: Self = Self("transitTimeLabel", domains: [.deliveryTimeSettings, .offerShippingDetails], ranges: [.text])

    public static let translationOfWork: Self = Self("translationOfWork", domains: [.creativeWork], ranges: [.creativeWork])

    public static let translator: Self = Self("translator", domains: [.creativeWork, .event], ranges: [.organization, .person])

    public static let transmissionMethod: Self = Self("transmissionMethod", domains: [.infectiousDisease], ranges: [.text])

    public static let travelBans: Self = Self("travelBans", domains: [.specialAnnouncement], ranges: [.url, .webContent])

    public static let trialDesign: Self = Self("trialDesign", domains: [.medicalTrial], ranges: [.medicalTrialDesign])

    public static let tributary: Self = Self("tributary", domains: [.vein], ranges: [.anatomicalStructure])

    public static let tripOrigin: Self = Self("tripOrigin", domains: [.trip], ranges: [.place])

    public static let typeOfBed: Self = Self("typeOfBed", domains: [.bedDetails], ranges: [.bedType, .text])

    public static let typeOfGood: Self = Self("typeOfGood", domains: [.ownershipInfo, .typeAndQuantityNode], ranges: [.product, .service])

    public static let typicalAgeRange: Self = Self("typicalAgeRange", domains: [.creativeWork, .event], ranges: [.text])

    public static let typicalCreditsPerTerm: Self = Self("typicalCreditsPerTerm", domains: [.educationalOccupationalProgram], ranges: [.integer, .structuredValue])

    public static let typicalTest: Self = Self("typicalTest", domains: [.medicalCondition], ranges: [.medicalTest])

    public static let underName: Self = Self("underName", domains: [.reservation, .ticket], ranges: [.organization, .person])

    public static let unitCode: Self = Self("unitCode", domains: [.propertyValue, .quantitativeValue, .typeAndQuantityNode, .unitPriceSpecification], ranges: [.text, .url])

    public static let unitText: Self = Self("unitText", domains: [.propertyValue, .quantitativeValue, .typeAndQuantityNode, .unitPriceSpecification], ranges: [.text])

    public static let unnamedSourcesPolicy: Self = Self("unnamedSourcesPolicy", domains: [.newsMediaOrganization, .organization], ranges: [.creativeWork, .url])

    public static let unsaturatedFatContent: Self = Self("unsaturatedFatContent", domains: [.nutritionInformation], ranges: [.mass])

    public static let uploadDate: Self = Self("uploadDate", domains: [.mediaObject], ranges: [.date, .dateTime])

    public static let upvoteCount: Self = Self("upvoteCount", domains: [.comment], ranges: [.integer])

    public static let url: Self = Self("url", domains: [.thing], ranges: [.url])

    public static let urlTemplate: Self = Self("urlTemplate", domains: [.entryPoint], ranges: [.text])

    public static let usNPI: Self = Self("usNPI", domains: [.physician], ranges: [.text])

    public static let usageInfo: Self = Self("usageInfo", domains: [.creativeWork], ranges: [.creativeWork, .url])

    public static let usedToDiagnose: Self = Self("usedToDiagnose", domains: [.medicalTest], ranges: [.medicalCondition])

    public static let userInteractionCount: Self = Self("userInteractionCount", domains: [.interactionCounter], ranges: [.integer])

    public static let usesDevice: Self = Self("usesDevice", domains: [.medicalTest], ranges: [.medicalDevice])

    public static let usesHealthPlanIdStandard: Self = Self("usesHealthPlanIdStandard", domains: [.healthInsurancePlan], ranges: [.text, .url])

    public static let utterances: Self = Self("utterances", domains: [.hyperTocEntry], ranges: [.text])

    public static let validFor: Self = Self("validFor", domains: [.credential, .permit], ranges: [.duration])

    public static let validForMemberTier: Self = Self(
        "validForMemberTier",
        domains: [.merchantReturnPolicy, .offer, .offerShippingDetails, .priceSpecification, .shippingService],
        ranges: [.memberProgramTier]
    )

    public static let validFrom: Self = Self(
        "validFrom",
        domains: [.certification, .demand, .financialIncentive, .locationFeatureSpecification, .monetaryAmount, .offer, .openingHoursSpecification, .permit, .priceSpecification],
        ranges: [.date, .dateTime]
    )

    public static let validIn: Self = Self("validIn", domains: [.certification, .credential, .permit], ranges: [.administrativeArea])

    public static let validThrough: Self = Self(
        "validThrough",
        domains: [.demand, .financialIncentive, .jobPosting, .locationFeatureSpecification, .monetaryAmount, .offer, .openingHoursSpecification, .priceSpecification],
        ranges: [.date, .dateTime]
    )

    public static let validUntil: Self = Self("validUntil", domains: [.permit], ranges: [.date])

    public static let value: Self = Self("value", domains: [.monetaryAmount, .propertyValue, .quantitativeValue], ranges: [.boolean, .number, .qualitativeValue, .structuredValue, .text])

    public static let valueAddedTaxIncluded: Self = Self("valueAddedTaxIncluded", domains: [.priceSpecification], ranges: [.boolean])

    public static let valueGroup: Self = Self("valueGroup", domains: [.propertyValue], ranges: [.text])

    public static let valueMaxLength: Self = Self("valueMaxLength", domains: [.propertyValueSpecification], ranges: [.number])

    public static let valueMinLength: Self = Self("valueMinLength", domains: [.propertyValueSpecification], ranges: [.number])

    public static let valueName: Self = Self("valueName", domains: [.propertyValueSpecification], ranges: [.text])

    public static let valuePattern: Self = Self("valuePattern", domains: [.propertyValueSpecification], ranges: [.text])

    public static let valueReference: Self = Self(
        "valueReference",
        domains: [.propertyValue, .qualitativeValue, .quantitativeValue],
        ranges: [.definedTerm, .enumeration, .measurementTypeEnumeration, .propertyValue, .qualitativeValue, .quantitativeValue, .structuredValue, .text]
    )

    public static let valueRequired: Self = Self("valueRequired", domains: [.propertyValueSpecification], ranges: [.boolean])

    public static let variableMeasured: Self = Self("variableMeasured", domains: [.dataset, .observation], ranges: [.property, .propertyValue, .statisticalVariable, .text])

    public static let variantCover: Self = Self("variantCover", domains: [.comicIssue], ranges: [.text])

    public static let variesBy: Self = Self("variesBy", domains: [.productGroup], ranges: [.definedTerm, .propertyValue, .text])

    public static let vatID: Self = Self("vatID", domains: [.organization, .person], ranges: [.text])

    public static let vehicleConfiguration: Self = Self("vehicleConfiguration", domains: [.vehicle], ranges: [.text])

    public static let vehicleEngine: Self = Self("vehicleEngine", domains: [.vehicle], ranges: [.engineSpecification])

    public static let vehicleIdentificationNumber: Self = Self("vehicleIdentificationNumber", domains: [.vehicle], ranges: [.text])

    public static let vehicleInteriorColor: Self = Self("vehicleInteriorColor", domains: [.vehicle], ranges: [.text])

    public static let vehicleInteriorType: Self = Self("vehicleInteriorType", domains: [.vehicle], ranges: [.text])

    public static let vehicleModelDate: Self = Self("vehicleModelDate", domains: [.vehicle], ranges: [.date])

    public static let vehicleSeatingCapacity: Self = Self("vehicleSeatingCapacity", domains: [.vehicle], ranges: [.number, .quantitativeValue])

    public static let vehicleSpecialUsage: Self = Self("vehicleSpecialUsage", domains: [.vehicle], ranges: [.carUsageType, .text])

    public static let vehicleTransmission: Self = Self("vehicleTransmission", domains: [.vehicle], ranges: [.qualitativeValue, .text, .url])

    public static let vendor: Self = Self("vendor", domains: [.buyAction], ranges: [.organization, .person])

    public static let verificationFactCheckingPolicy: Self = Self("verificationFactCheckingPolicy", domains: [.newsMediaOrganization], ranges: [.creativeWork, .url])

    public static let version: Self = Self("version", domains: [.creativeWork], ranges: [.number, .text])

    public static let video: Self = Self("video", domains: [.creativeWork], ranges: [.clip, .videoObject])

    public static let videoFormat: Self = Self("videoFormat", domains: [.broadcastEvent, .broadcastService, .screeningEvent], ranges: [.text])

    public static let videoFrameSize: Self = Self("videoFrameSize", domains: [.videoObject], ranges: [.text])

    public static let videoQuality: Self = Self("videoQuality", domains: [.videoObject], ranges: [.text])

    public static let volumeNumber: Self = Self("volumeNumber", domains: [.publicationVolume], ranges: [.integer, .text])

    public static let warning: Self = Self("warning", domains: [.drug], ranges: [.text, .url])

    public static let warranty: Self = Self("warranty", domains: [.demand, .offer], ranges: [.warrantyPromise])

    public static let warrantyPromise: Self = Self("warrantyPromise", domains: [.buyAction, .sellAction], ranges: [.warrantyPromise])

    public static let warrantyScope: Self = Self("warrantyScope", domains: [.warrantyPromise], ranges: [.warrantyScope])

    public static let webCheckinTime: Self = Self("webCheckinTime", domains: [.flight], ranges: [.dateTime])

    public static let webFeed: Self = Self("webFeed", domains: [.podcastSeries, .specialAnnouncement], ranges: [.dataFeed, .url])

    public static let weight: Self = Self("weight", domains: [.offerShippingDetails, .person, .product, .shippingConditions, .visualArtwork], ranges: [.mass, .quantitativeValue])

    public static let weightPercentage: Self = Self("weightPercentage", domains: [.shippingRateSettings], ranges: [.number])

    public static let weightTotal: Self = Self("weightTotal", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let wheelbase: Self = Self("wheelbase", domains: [.vehicle], ranges: [.quantitativeValue])

    public static let width: Self = Self("width", domains: [.mediaObject, .offerShippingDetails, .product, .shippingConditions, .visualArtwork], ranges: [.distance, .quantitativeValue])

    public static let winner: Self = Self("winner", domains: [.loseAction], ranges: [.person])

    public static let wordCount: Self = Self("wordCount", domains: [.article, .creativeWork], ranges: [.integer])

    public static let workExample: Self = Self("workExample", domains: [.creativeWork], ranges: [.creativeWork])

    public static let workFeatured: Self = Self("workFeatured", domains: [.event], ranges: [.creativeWork])

    public static let workHours: Self = Self("workHours", domains: [.jobPosting], ranges: [.text])

    public static let workLocation: Self = Self("workLocation", domains: [.person], ranges: [.contactPoint, .place])

    public static let workPerformed: Self = Self("workPerformed", domains: [.event], ranges: [.creativeWork])

    public static let workPresented: Self = Self("workPresented", domains: [.screeningEvent], ranges: [.movie])

    public static let workTranslation: Self = Self("workTranslation", domains: [.creativeWork], ranges: [.creativeWork])

    public static let workload: Self = Self("workload", domains: [.exercisePlan], ranges: [.energy, .quantitativeValue])

    public static let worksFor: Self = Self("worksFor", domains: [.person], ranges: [.organization])

    public static let worstRating: Self = Self("worstRating", domains: [.rating], ranges: [.number, .text])

    public static let xpath: Self = Self("xpath", domains: [.speakableSpecification, .webPageElement], ranges: [.xPathType])

    public static let yearBuilt: Self = Self("yearBuilt", domains: [.accommodation], ranges: [.number])

    public static let yearlyRevenue: Self = Self("yearlyRevenue", domains: [.businessAudience], ranges: [.quantitativeValue])

    public static let yearsInOperation: Self = Self("yearsInOperation", domains: [.businessAudience], ranges: [.quantitativeValue])

    public static let yield: Self = Self("yield", domains: [.howTo], ranges: [.quantitativeValue, .text])
}

extension SchemaOrg.Property {

    static let all: [SchemaOrg.Property] = [
        .about,
        .abridged,
        .abstract,
        .accelerationTime,
        .acceptedAnswer,
        .acceptedOffer,
        .acceptedPaymentMethod,
        .acceptsReservations,
        .accessCode,
        .accessMode,
        .accessModeSufficient,
        .accessibilityAPI,
        .accessibilityControl,
        .accessibilityFeature,
        .accessibilityHazard,
        .accessibilitySummary,
        .accommodationCategory,
        .accommodationFloorPlan,
        .accountId,
        .accountMinimumInflow,
        .accountOverdraftLimit,
        .accountablePerson,
        .acquireLicensePage,
        .acquiredFrom,
        .acrissCode,
        .actionAccessibilityRequirement,
        .actionApplication,
        .actionOption,
        .actionPlatform,
        .actionProcess,
        .actionStatus,
        .actionableFeedbackPolicy,
        .activeIngredient,
        .activityDuration,
        .activityFrequency,
        .actor,
        .actors,
        .addOn,
        .additionalName,
        .additionalNumberOfGuests,
        .additionalProperty,
        .additionalType,
        .additionalVariable,
        .address,
        .addressCountry,
        .addressLocality,
        .addressRegion,
        .administrationRoute,
        .advanceBookingRequirement,
        .adverseOutcome,
        .affectedBy,
        .affiliation,
        .afterMedia,
        .agent,
        .agentInteractionStatistic,
        .aggregateElement,
        .aggregateRating,
        .aircraft,
        .album,
        .albumProductionType,
        .albumRelease,
        .albumReleaseType,
        .albums,
        .alcoholWarning,
        .algorithm,
        .alignmentType,
        .alternateName,
        .alternativeHeadline,
        .alternativeOf,
        .alumni,
        .alumniOf,
        .amenityFeature,
        .amount,
        .amountOfThisGood,
        .announcementLocation,
        .annualPercentageRate,
        .answerCount,
        .answerExplanation,
        .antagonist,
        .appearance,
        .applicableCountry,
        .applicableLocation,
        .applicantLocationRequirements,
        .application,
        .applicationCategory,
        .applicationContact,
        .applicationDeadline,
        .applicationStartDate,
        .applicationSubCategory,
        .applicationSuite,
        .appliesToDeliveryMethod,
        .appliesToPaymentMethod,
        .archiveHeld,
        .archivedAt,
        .area,
        .areaServed,
        .arrivalAirport,
        .arrivalBoatTerminal,
        .arrivalBusStop,
        .arrivalGate,
        .arrivalPlatform,
        .arrivalStation,
        .arrivalTerminal,
        .arrivalTime,
        .artEdition,
        .artMedium,
        .arterialBranch,
        .artform,
        .articleBody,
        .articleSection,
        .artist,
        .artworkSurface,
        .asin,
        .aspect,
        .assembly,
        .assemblyVersion,
        .assesses,
        .associatedAnatomy,
        .associatedArticle,
        .associatedClaimReview,
        .associatedDisease,
        .associatedMedia,
        .associatedMediaReview,
        .associatedPathophysiology,
        .associatedReview,
        .athlete,
        .attendee,
        .attendees,
        .audience,
        .audienceType,
        .audio,
        .auditDate,
        .authenticator,
        .author,
        .authorizedRepresentative,
        .availability,
        .availabilityEnds,
        .availabilityStarts,
        .availableAtOrFrom,
        .availableChannel,
        .availableDeliveryMethod,
        .availableFrom,
        .availableIn,
        .availableLanguage,
        .availableOnDevice,
        .availableService,
        .availableStrength,
        .availableTest,
        .availableThrough,
        .award,
        .awards,
        .awayTeam,
        .backstory,
        .bankAccountType,
        .baseSalary,
        .bccRecipient,
        .bed,
        .beforeMedia,
        .beneficiaryBank,
        .benefits,
        .benefitsSummaryUrl,
        .bestRating,
        .billingAddress,
        .billingDuration,
        .billingIncrement,
        .billingPeriod,
        .billingStart,
        .bioChemInteraction,
        .bioChemSimilarity,
        .biologicalRole,
        .biomechnicalClass,
        .birthDate,
        .birthPlace,
        .bitrate,
        .blogPost,
        .blogPosts,
        .bloodSupply,
        .boardingGroup,
        .boardingPolicy,
        .bodyLocation,
        .bodyType,
        .bookEdition,
        .bookFormat,
        .bookingAgent,
        .bookingTime,
        .borrower,
        .box,
        .branch,
        .branchCode,
        .branchOf,
        .brand,
        .breadcrumb,
        .breastfeedingWarning,
        .broadcastAffiliateOf,
        .broadcastChannelId,
        .broadcastDisplayName,
        .broadcastFrequency,
        .broadcastFrequencyValue,
        .broadcastOfEvent,
        .broadcastServiceTier,
        .broadcastSignalModulation,
        .broadcastSubChannel,
        .broadcastTimezone,
        .broadcaster,
        .broker,
        .browserRequirements,
        .busName,
        .busNumber,
        .businessDays,
        .businessFunction,
        .buyer,
        .byArtist,
        .byDay,
        .byMonth,
        .byMonthDay,
        .byMonthWeek,
        .callSign,
        .calories,
        .candidate,
        .caption,
        .carbohydrateContent,
        .cargoVolume,
        .carrier,
        .carrierRequirements,
        .cashBack,
        .catalog,
        .catalogNumber,
        .category,
        .cause,
        .causeOf,
        .ccRecipient,
        .certificationIdentification,
        .certificationRating,
        .certificationStatus,
        .character,
        .characterAttribute,
        .characterName,
        .cheatCode,
        .checkinTime,
        .checkoutPageURLTemplate,
        .checkoutTime,
        .chemicalComposition,
        .chemicalRole,
        .childMaxAge,
        .childMinAge,
        .childTaxon,
        .children,
        .cholesterolContent,
        .circle,
        .citation,
        .claimInterpreter,
        .claimReviewed,
        .clincalPharmacology,
        .clinicalPharmacology,
        .clipNumber,
        .closes,
        .coach,
        .code,
        .codeRepository,
        .codeSampleType,
        .codeValue,
        .codingSystem,
        .colleague,
        .colleagues,
        .collection,
        .collectionSize,
        .color,
        .colorSwatch,
        .colorist,
        .comment,
        .commentCount,
        .commentText,
        .commentTime,
        .companyRegistration,
        .competencyRequired,
        .competitor,
        .composer,
        .comprisedOf,
        .conditionsOfAccess,
        .confirmationNumber,
        .connectedTo,
        .constraintProperty,
        .consumerNotice,
        .contactOption,
        .contactPoint,
        .contactPoints,
        .contactType,
        .contactlessPayment,
        .containedIn,
        .containedInPlace,
        .containsPlace,
        .containsSeason,
        .contentLocation,
        .contentRating,
        .contentReferenceTime,
        .contentSize,
        .contentType,
        .contentUrl,
        .contraindication,
        .contributor,
        .cookTime,
        .cookingMethod,
        .copyrightHolder,
        .copyrightNotice,
        .copyrightYear,
        .correction,
        .correctionsPolicy,
        .costCategory,
        .costCurrency,
        .costOrigin,
        .costPerUnit,
        .countriesNotSupported,
        .countriesSupported,
        .countryOfAssembly,
        .countryOfLastProcessing,
        .countryOfOrigin,
        .course,
        .courseCode,
        .courseMode,
        .coursePrerequisites,
        .courseSchedule,
        .courseWorkload,
        .coverageEndTime,
        .coverageStartTime,
        .creativeWorkStatus,
        .creator,
        .credentialCategory,
        .creditText,
        .creditedTo,
        .cssSelector,
        .currenciesAccepted,
        .currency,
        .currentExchangeRate,
        .customer,
        .customerRemorseReturnFees,
        .customerRemorseReturnLabelSource,
        .customerRemorseReturnShippingFeesAmount,
        .cutoffTime,
        .cvdCollectionDate,
        .cvdFacilityCounty,
        .cvdFacilityId,
        .cvdNumBeds,
        .cvdNumBedsOcc,
        .cvdNumC19Died,
        .cvdNumC19HOPats,
        .cvdNumC19HospPats,
        .cvdNumC19MechVentPats,
        .cvdNumC19OFMechVentPats,
        .cvdNumC19OverflowPats,
        .cvdNumICUBeds,
        .cvdNumICUBedsOcc,
        .cvdNumTotBeds,
        .cvdNumVent,
        .cvdNumVentUse,
        .data,
        .dataFeedElement,
        .dataset,
        .datasetTimeInterval,
        .dateCreated,
        .dateDeleted,
        .dateIssued,
        .dateModified,
        .datePosted,
        .datePublished,
        .dateRead,
        .dateReceived,
        .dateSent,
        .dateVehicleFirstRegistered,
        .dateline,
        .dayOfWeek,
        .deathDate,
        .deathPlace,
        .defaultValue,
        .deliveryAddress,
        .deliveryLeadTime,
        .deliveryMethod,
        .deliveryStatus,
        .deliveryTime,
        .department,
        .departureAirport,
        .departureBoatTerminal,
        .departureBusStop,
        .departureGate,
        .departurePlatform,
        .departureStation,
        .departureTerminal,
        .departureTime,
        .dependencies,
        .depth,
        .description,
        .device,
        .diagnosis,
        .diagram,
        .diet,
        .dietFeatures,
        .differentialDiagnosis,
        .digitalSourceType,
        .directApply,
        .director,
        .directors,
        .disambiguatingDescription,
        .discount,
        .discountCode,
        .discountCurrency,
        .discusses,
        .discussionUrl,
        .diseasePreventionInfo,
        .diseaseSpreadStatistics,
        .displayLocation,
        .dissolutionDate,
        .distance,
        .distinguishingSign,
        .distribution,
        .diversityPolicy,
        .diversityStaffingReport,
        .documentation,
        .doesNotShip,
        .domainIncludes,
        .domiciledMortgage,
        .doorTime,
        .dosageForm,
        .doseSchedule,
        .doseUnit,
        .doseValue,
        .downPayment,
        .downloadUrl,
        .downvoteCount,
        .drainsTo,
        .driveWheelConfiguration,
        .dropoffLocation,
        .dropoffTime,
        .drug,
        .drugClass,
        .drugUnit,
        .duns,
        .duplicateTherapy,
        .duration,
        .durationOfWarranty,
        .duringMedia,
        .earlyPrepaymentPenalty,
        .editEIDR,
        .editor,
        .eduQuestionType,
        .educationRequirements,
        .educationalAlignment,
        .educationalCredentialAwarded,
        .educationalFramework,
        .educationalLevel,
        .educationalProgramMode,
        .educationalRole,
        .educationalUse,
        .elevation,
        .eligibilityToWorkRequirement,
        .eligibleCustomerType,
        .eligibleDuration,
        .eligibleQuantity,
        .eligibleRegion,
        .eligibleTransactionVolume,
        .eligibleWithSupplier,
        .email,
        .embedUrl,
        .embeddedTextCaption,
        .emissionsCO2,
        .employee,
        .employees,
        .employerOverview,
        .employmentType,
        .employmentUnit,
        .encodesBioChemEntity,
        .encodesCreativeWork,
        .encoding,
        .encodingFormat,
        .encodingType,
        .encodings,
        .endDate,
        .endOffset,
        .endTime,
        .endorsee,
        .endorsers,
        .energyEfficiencyScaleMax,
        .energyEfficiencyScaleMin,
        .engineDisplacement,
        .enginePower,
        .engineType,
        .entertainmentBusiness,
        .epidemiology,
        .episode,
        .episodeNumber,
        .episodes,
        .equal,
        .error,
        .errorCode,
        .estimatedCost,
        .estimatedFlightDuration,
        .estimatedSalary,
        .estimatesRiskOf,
        .ethicsPolicy,
        .event,
        .eventAttendanceMode,
        .eventSchedule,
        .eventStatus,
        .events,
        .evidenceLevel,
        .evidenceOrigin,
        .exampleOfWork,
        .exceptDate,
        .exchangeRateSpread,
        .executableLibraryName,
        .exerciseCourse,
        .exercisePlan,
        .exerciseRelatedDiet,
        .exerciseType,
        .exifData,
        .expectedArrivalFrom,
        .expectedArrivalUntil,
        .expectedPrognosis,
        .expectsAcceptanceOf,
        .experienceInPlaceOfEducation,
        .experienceRequirements,
        .expertConsiderations,
        .expires,
        .expressedIn,
        .extendedAddress,
        .familyName,
        .fatContent,
        .faxNumber,
        .featureList,
        .feesAndCommissionsSpecification,
        .fiberContent,
        .fileFormat,
        .fileSize,
        .financialAidEligible,
        .firstAppearance,
        .firstPerformance,
        .flightDistance,
        .flightNumber,
        .floorLevel,
        .floorLimit,
        .floorSize,
        .followee,
        .follows,
        .followup,
        .foodEstablishment,
        .foodEvent,
        .foodWarning,
        .founder,
        .founders,
        .foundingDate,
        .foundingLocation,
        .free,
        .freeShippingThreshold,
        .frequency,
        .fromLocation,
        .fuelCapacity,
        .fuelConsumption,
        .fuelEfficiency,
        .fuelType,
        .fulfillmentType,
        .functionalClass,
        .fundedItem,
        .funder,
        .funding,
        .game,
        .gameAvailabilityType,
        .gameEdition,
        .gameItem,
        .gameLocation,
        .gamePlatform,
        .gameServer,
        .gameTip,
        .gender,
        .genre,
        .geo,
        .geoContains,
        .geoCoveredBy,
        .geoCovers,
        .geoCrosses,
        .geoDisjoint,
        .geoEquals,
        .geoIntersects,
        .geoMidpoint,
        .geoOverlaps,
        .geoRadius,
        .geoTouches,
        .geoWithin,
        .geographicArea,
        .gettingTestedInfo,
        .givenName,
        .globalLocationNumber,
        .governmentBenefitsInfo,
        .gracePeriod,
        .grantee,
        .greater,
        .greaterOrEqual,
        .gtin,
        .gtin12,
        .gtin13,
        .gtin14,
        .gtin8,
        .guideline,
        .guidelineDate,
        .guidelineSubject,
        .handlingTime,
        .hasAdultConsideration,
        .hasBioChemEntityPart,
        .hasBioPolymerSequence,
        .hasBroadcastChannel,
        .hasCategoryCode,
        .hasCertification,
        .hasCourse,
        .hasCourseInstance,
        .hasCredential,
        .hasDefinedTerm,
        .hasDeliveryMethod,
        .hasDigitalDocumentPermission,
        .hasDigitalProductPassport,
        .hasDriveThroughService,
        .hasEnergyConsumptionDetails,
        .hasEnergyEfficiencyCategory,
        .hasGS1DigitalLink,
        .hasHealthAspect,
        .hasMap,
        .hasMeasurement,
        .hasMemberProgram,
        .hasMenu,
        .hasMenuItem,
        .hasMenuSection,
        .hasMerchantReturnPolicy,
        .hasMolecularFunction,
        .hasOccupation,
        .hasOfferCatalog,
        .hasPOS,
        .hasPart,
        .hasParticipationOffer,
        .hasProductReturnPolicy,
        .hasRepresentation,
        .hasShippingService,
        .hasSponsorshipOffer,
        .hasStore,
        .hasTierBenefit,
        .hasTierRequirement,
        .hasTiers,
        .hasVariant,
        .headline,
        .healthCondition,
        .healthPlanCoinsuranceOption,
        .healthPlanCoinsuranceRate,
        .healthPlanCopay,
        .healthPlanCopayOption,
        .healthPlanCostSharing,
        .healthPlanDrugOption,
        .healthPlanDrugTier,
        .healthPlanId,
        .healthPlanMarketingUrl,
        .healthPlanNetworkId,
        .healthPlanNetworkTier,
        .healthPlanPharmacyCategory,
        .healthcareReportingData,
        .height,
        .highPrice,
        .hiringOrganization,
        .holdingArchive,
        .homeLocation,
        .homeTeam,
        .honorificPrefix,
        .honorificSuffix,
        .hospitalAffiliation,
        .hostingOrganization,
        .hoursAvailable,
        .howPerformed,
        .httpMethod,
        .iataCode,
        .icaoCode,
        .identifier,
        .identifyingExam,
        .identifyingTest,
        .illustrator,
        .image,
        .imagingTechnique,
        .importer,
        .inAlbum,
        .inBroadcastLineup,
        .inChI,
        .inChIKey,
        .inCodeSet,
        .inDefinedTermSet,
        .inLanguage,
        .inPlaylist,
        .inProductGroupWithID,
        .inStoreReturnsOffered,
        .inSupportOf,
        .incentiveAmount,
        .incentiveCompensation,
        .incentiveStatus,
        .incentiveType,
        .incentives,
        .incentivizedItem,
        .includedComposition,
        .includedDataCatalog,
        .includedInDataCatalog,
        .includedInHealthInsurancePlan,
        .includedRiskFactor,
        .includesAttraction,
        .includesHealthPlanFormulary,
        .includesHealthPlanNetwork,
        .includesObject,
        .incomeLimit,
        .increasesRiskOf,
        .industry,
        .ineligibleRegion,
        .infectiousAgent,
        .infectiousAgentClass,
        .ingredients,
        .inker,
        .insertion,
        .installUrl,
        .instructor,
        .instrument,
        .intensity,
        .interactingDrug,
        .interactionCount,
        .interactionService,
        .interactionStatistic,
        .interactionType,
        .interactivityType,
        .interestRate,
        .interpretedAsClaim,
        .inventoryLevel,
        .inverseOf,
        .isAcceptingNewPatients,
        .isAccessibleForFree,
        .isAccessoryOrSparePartFor,
        .isAvailableGenerically,
        .isBasedOn,
        .isBasedOnUrl,
        .isConsumableFor,
        .isEncodedByBioChemEntity,
        .isFamilyFriendly,
        .isGift,
        .isInvolvedInBiologicalProcess,
        .isLiveBroadcast,
        .isLocatedInSubcellularLocation,
        .isOftenBoughtWith,
        .isPartOf,
        .isPartOfBioChemEntity,
        .isPlanForApartment,
        .isProprietary,
        .isRelatedTo,
        .isResizable,
        .isSimilarTo,
        .isStoreOn,
        .isTierOf,
        .isUnlabelledFallback,
        .isVariantOf,
        .isbn,
        .isicV4,
        .iso6523Code,
        .isrcCode,
        .issn,
        .issueNumber,
        .issuedBy,
        .issuedThrough,
        .iswcCode,
        .item,
        .itemCondition,
        .itemDefectReturnFees,
        .itemDefectReturnLabelSource,
        .itemDefectReturnShippingFeesAmount,
        .itemListElement,
        .itemListOrder,
        .itemLocation,
        .itemOffered,
        .itemPopularity,
        .itemReviewed,
        .itemShipped,
        .itinerary,
        .iupacName,
        .jobBenefits,
        .jobDuration,
        .jobImmediateStart,
        .jobLocation,
        .jobLocationType,
        .jobStartDate,
        .jobTitle,
        .jurisdiction,
        .keywords,
        .knownVehicleDamages,
        .knows,
        .knowsAbout,
        .knowsLanguage,
        .labelDetails,
        .landlord,
        .language,
        .lastReviewed,
        .latitude,
        .layoutImage,
        .learningResourceType,
        .leaseLength,
        .legalAddress,
        .legalName,
        .legalRepresentative,
        .legalStatus,
        .legislationAmends,
        .legislationApplies,
        .legislationChanges,
        .legislationCommences,
        .legislationConsolidates,
        .legislationCorrects,
        .legislationCountersignedBy,
        .legislationDate,
        .legislationDateOfApplicability,
        .legislationDateVersion,
        .legislationEnsuresImplementationOf,
        .legislationIdentifier,
        .legislationJurisdiction,
        .legislationLegalForce,
        .legislationLegalValue,
        .legislationPassedBy,
        .legislationRepeals,
        .legislationResponsible,
        .legislationTransposes,
        .legislationType,
        .leiCode,
        .lender,
        .lesser,
        .lesserOrEqual,
        .letterer,
        .license,
        .lifeEvent,
        .line,
        .linkRelationship,
        .liveBlogUpdate,
        .loanMortgageMandateAmount,
        .loanPaymentAmount,
        .loanPaymentFrequency,
        .loanRepaymentForm,
        .loanTerm,
        .loanType,
        .location,
        .locationCreated,
        .lodgingUnitDescription,
        .lodgingUnitType,
        .logo,
        .longitude,
        .loser,
        .lowPrice,
        .lyricist,
        .lyrics,
        .mainContentOfPage,
        .mainEntity,
        .mainEntityOfPage,
        .maintainer,
        .makesOffer,
        .manufacturer,
        .map,
        .mapType,
        .maps,
        .marginOfError,
        .masthead,
        .material,
        .materialExtent,
        .mathExpression,
        .maxPrice,
        .maxValue,
        .maximumAttendeeCapacity,
        .maximumEnrollment,
        .maximumIntake,
        .maximumPhysicalAttendeeCapacity,
        .maximumVirtualAttendeeCapacity,
        .mealService,
        .measuredProperty,
        .measurementDenominator,
        .measurementMethod,
        .measurementQualifier,
        .measurementTechnique,
        .mechanismOfAction,
        .mediaAuthenticityCategory,
        .mediaItemAppearance,
        .median,
        .medicalAudience,
        .medicalSpecialty,
        .medicineSystem,
        .meetsEmissionStandard,
        .member,
        .memberOf,
        .members,
        .membershipNumber,
        .membershipPointsEarned,
        .memoryRequirements,
        .mentions,
        .menu,
        .menuAddOn,
        .merchant,
        .merchantReturnDays,
        .merchantReturnLink,
        .messageAttachment,
        .mileageFromOdometer,
        .minPrice,
        .minValue,
        .minimumOrderValue,
        .minimumPaymentDue,
        .missionCoveragePrioritiesPolicy,
        .mobileUrl,
        .model,
        .modelDate,
        .modifiedTime,
        .molecularFormula,
        .molecularWeight,
        .monoisotopicMolecularWeight,
        .monthlyMinimumRepaymentAmount,
        .monthsOfExperience,
        .mpn,
        .multipleValues,
        .muscleAction,
        .musicArrangement,
        .musicBy,
        .musicCompositionForm,
        .musicGroupMember,
        .musicReleaseFormat,
        .musicalKey,
        .naics,
        .name,
        .namedPosition,
        .nationality,
        .naturalProgression,
        .negativeNotes,
        .nerve,
        .nerveMotor,
        .netWorth,
        .newsUpdatesAndGuidelines,
        .nextItem,
        .noBylinesPolicy,
        .nonEqual,
        .nonProprietaryName,
        .nonprofitStatus,
        .normalRange,
        .nsn,
        .numAdults,
        .numChildren,
        .numConstraints,
        .numItems,
        .numTracks,
        .numberOfAccommodationUnits,
        .numberOfAirbags,
        .numberOfAvailableAccommodationUnits,
        .numberOfAxles,
        .numberOfBathroomsTotal,
        .numberOfBedrooms,
        .numberOfBeds,
        .numberOfCredits,
        .numberOfDoors,
        .numberOfEmployees,
        .numberOfEpisodes,
        .numberOfForwardGears,
        .numberOfFullBathrooms,
        .numberOfItems,
        .numberOfLoanPayments,
        .numberOfPages,
        .numberOfPartialBathrooms,
        .numberOfPlayers,
        .numberOfPreviousOwners,
        .numberOfRooms,
        .numberOfSeasons,
        .numberedPosition,
        .nutrition,
        .object,
        .observationAbout,
        .observationDate,
        .observationPeriod,
        .occupancy,
        .occupationLocation,
        .occupationalCategory,
        .occupationalCredentialAwarded,
        .offerCount,
        .offeredBy,
        .offers,
        .offersPrescriptionByMail,
        .openingHours,
        .openingHoursSpecification,
        .opens,
        .operatingSystem,
        .opponent,
        .option,
        .orderDate,
        .orderDelivery,
        .orderItemNumber,
        .orderItemStatus,
        .orderNumber,
        .orderPercentage,
        .orderQuantity,
        .orderStatus,
        .orderValue,
        .orderedItem,
        .organizer,
        .originAddress,
        .originalMediaContextDescription,
        .originalMediaLink,
        .originatesFrom,
        .overdosage,
        .ownedFrom,
        .ownedThrough,
        .owner,
        .ownershipFundingInfo,
        .owns,
        .pageEnd,
        .pageStart,
        .pagination,
        .parent,
        .parentItem,
        .parentOrganization,
        .parentService,
        .parentTaxon,
        .parents,
        .partOfEpisode,
        .partOfInvoice,
        .partOfOrder,
        .partOfSeason,
        .partOfSeries,
        .partOfSystem,
        .partOfTVSeries,
        .partOfTrip,
        .participant,
        .partySize,
        .passengerPriorityStatus,
        .passengerSequenceNumber,
        .pathophysiology,
        .pattern,
        .payload,
        .paymentAccepted,
        .paymentDue,
        .paymentDueDate,
        .paymentMethod,
        .paymentMethodId,
        .paymentMethodType,
        .paymentStatus,
        .paymentUrl,
        .penciler,
        .percentile10,
        .percentile25,
        .percentile75,
        .percentile90,
        .performTime,
        .performer,
        .performerIn,
        .performers,
        .permissionType,
        .permissions,
        .permitAudience,
        .permittedUsage,
        .petsAllowed,
        .phoneticText,
        .photo,
        .photos,
        .physicalRequirement,
        .physiologicalBenefits,
        .pickupLocation,
        .pickupTime,
        .playMode,
        .playerType,
        .playersOnline,
        .polygon,
        .populationType,
        .position,
        .positiveNotes,
        .possibleComplication,
        .possibleTreatment,
        .postOfficeBoxNumber,
        .postOp,
        .postalCode,
        .postalCodeBegin,
        .postalCodeEnd,
        .postalCodePrefix,
        .postalCodeRange,
        .potentialAction,
        .potentialUse,
        .practicesAt,
        .preOp,
        .predecessorOf,
        .pregnancyCategory,
        .pregnancyWarning,
        .prepTime,
        .preparation,
        .prescribingInfo,
        .prescriptionStatus,
        .previousItem,
        .previousStartDate,
        .price,
        .priceComponent,
        .priceComponentType,
        .priceCurrency,
        .priceRange,
        .priceSpecification,
        .priceType,
        .priceValidUntil,
        .primaryImageOfPage,
        .primaryPrevention,
        .printColumn,
        .printEdition,
        .printPage,
        .printSection,
        .procedure,
        .procedureType,
        .processingTime,
        .processorRequirements,
        .producer,
        .produces,
        .productGroupID,
        .productID,
        .productReturnDays,
        .productReturnLink,
        .productSupported,
        .productionCompany,
        .productionDate,
        .proficiencyLevel,
        .program,
        .programMembershipUsed,
        .programName,
        .programPrerequisites,
        .programType,
        .programmingLanguage,
        .programmingModel,
        .pronouns,
        .propertyID,
        .proprietaryName,
        .proteinContent,
        .provider,
        .providerMobility,
        .providesBroadcastService,
        .providesService,
        .publicAccess,
        .publicTransportClosuresInfo,
        .publication,
        .publicationType,
        .publishedBy,
        .publishedOn,
        .publisher,
        .publisherImprint,
        .publishingPrinciples,
        .purchaseDate,
        .purchasePriceLimit,
        .purchaseType,
        .qualifications,
        .qualifiedExpense,
        .quarantineGuidelines,
        .query,
        .quest,
        .question,
        .rangeIncludes,
        .ratingCount,
        .ratingExplanation,
        .ratingValue,
        .readBy,
        .readonlyValue,
        .realEstateAgent,
        .recipe,
        .recipeCategory,
        .recipeCuisine,
        .recipeIngredient,
        .recipeInstructions,
        .recipeYield,
        .recipient,
        .recognizedBy,
        .recognizingAuthority,
        .recommendationStrength,
        .recommendedIntake,
        .recordLabel,
        .recordedAs,
        .recordedAt,
        .recordedIn,
        .recordingOf,
        .recourseLoan,
        .recycledContentPercentage,
        .referee,
        .referenceQuantity,
        .referencesOrder,
        .refundType,
        .regionDrained,
        .regionsAllowed,
        .relatedAnatomy,
        .relatedCondition,
        .relatedDrug,
        .relatedLink,
        .relatedStructure,
        .relatedTherapy,
        .relatedTo,
        .releaseDate,
        .releaseNotes,
        .releaseOf,
        .releasedEvent,
        .relevantOccupation,
        .relevantSpecialty,
        .remainingAttendeeCapacity,
        .renegotiableLoan,
        .repeatCount,
        .repeatFrequency,
        .repetitions,
        .replacee,
        .replacer,
        .replyToUrl,
        .reportNumber,
        .representativeOfPage,
        .requiredCollateral,
        .requiredGender,
        .requiredMaxAge,
        .requiredMinAge,
        .requiredQuantity,
        .requirements,
        .requiresSubscription,
        .reservationFor,
        .reservationId,
        .reservationStatus,
        .reservedTicket,
        .responsibilities,
        .restPeriods,
        .restockingFee,
        .result,
        .resultComment,
        .resultReview,
        .returnFees,
        .returnLabelSource,
        .returnMethod,
        .returnPolicyCategory,
        .returnPolicyCountry,
        .returnPolicySeasonalOverride,
        .returnShippingFeesAmount,
        .review,
        .reviewAspect,
        .reviewBody,
        .reviewCount,
        .reviewRating,
        .reviewedBy,
        .reviews,
        .riskFactor,
        .risks,
        .roleName,
        .roofLoad,
        .rsvpResponse,
        .runsTo,
        .runtime,
        .runtimePlatform,
        .rxcui,
        .safetyConsideration,
        .salaryCurrency,
        .salaryUponCompletion,
        .sameAs,
        .sampleType,
        .saturatedFatContent,
        .scheduleTimezone,
        .scheduledPaymentDate,
        .scheduledTime,
        .schemaVersion,
        .schoolClosuresInfo,
        .screenCount,
        .screenshot,
        .sdDatePublished,
        .sdLicense,
        .sdPublisher,
        .season,
        .seasonNumber,
        .seasonalOverride,
        .seasons,
        .seatNumber,
        .seatRow,
        .seatSection,
        .seatingCapacity,
        .seatingType,
        .secondaryPrevention,
        .securityClearanceRequirement,
        .securityScreening,
        .seeks,
        .seller,
        .sender,
        .sensoryRequirement,
        .sensoryUnit,
        .serialNumber,
        .seriousAdverseOutcome,
        .serverStatus,
        .servesCuisine,
        .serviceArea,
        .serviceAudience,
        .serviceLocation,
        .serviceOperator,
        .serviceOutput,
        .servicePhone,
        .servicePostalAddress,
        .serviceSmsNumber,
        .serviceType,
        .serviceUrl,
        .servingSize,
        .sha256,
        .sharedContent,
        .shippingConditions,
        .shippingDestination,
        .shippingDetails,
        .shippingLabel,
        .shippingOrigin,
        .shippingRate,
        .shippingSettingsLink,
        .sibling,
        .siblings,
        .signDetected,
        .signOrSymptom,
        .significance,
        .significantLink,
        .significantLinks,
        .size,
        .sizeGroup,
        .sizeSystem,
        .skills,
        .sku,
        .slogan,
        .smiles,
        .smokingAllowed,
        .sodiumContent,
        .softwareAddOn,
        .softwareHelp,
        .softwareRequirements,
        .softwareVersion,
        .source,
        .sourceOrganization,
        .sourcedFrom,
        .spatial,
        .spatialCoverage,
        .speakable,
        .specialCommitments,
        .specialOpeningHoursSpecification,
        .specialty,
        .specification,
        .speechToTextMarkup,
        .speed,
        .spokenByCharacter,
        .sponsor,
        .sport,
        .sportsActivityLocation,
        .sportsEvent,
        .sportsTeam,
        .spouse,
        .stage,
        .stageAsNumber,
        .starRating,
        .startDate,
        .startOffset,
        .startTime,
        .statType,
        .status,
        .steeringPosition,
        .step,
        .stepValue,
        .steps,
        .storageRequirements,
        .streetAddress,
        .strengthUnit,
        .strengthValue,
        .structuralClass,
        .study,
        .studyDesign,
        .studyLocation,
        .studySubject,
        .subEvent,
        .subEvents,
        .subOrganization,
        .subReservation,
        .subStageSuffix,
        .subStructure,
        .subTest,
        .subTrip,
        .subjectOf,
        .substanceOfConcern,
        .subtitleLanguage,
        .successorOf,
        .sugarContent,
        .suggestedAge,
        .suggestedAnswer,
        .suggestedGender,
        .suggestedMaxAge,
        .suggestedMeasurement,
        .suggestedMinAge,
        .suitableForDiet,
        .superEvent,
        .supersededBy,
        .supply,
        .supplyTo,
        .supportingData,
        .surface,
        .syllabusSections,
        .target,
        .targetCollection,
        .targetDescription,
        .targetName,
        .targetPlatform,
        .targetPopulation,
        .targetProduct,
        .targetUrl,
        .taxID,
        .taxonRank,
        .taxonomicRange,
        .teaches,
        .telephone,
        .temporal,
        .temporalCoverage,
        .termCode,
        .termDuration,
        .termsOfService,
        .termsPerYear,
        .text,
        .textValue,
        .thumbnail,
        .thumbnailUrl,
        .tickerSymbol,
        .ticketNumber,
        .ticketToken,
        .ticketedSeat,
        .timeOfDay,
        .timeRequired,
        .timeToComplete,
        .timestamp,
        .tissueSample,
        .title,
        .titleEIDR,
        .toLocation,
        .toRecipient,
        .tocContinuation,
        .tocEntry,
        .tongueWeight,
        .tool,
        .torque,
        .totalHistoricalEnrollment,
        .totalJobOpenings,
        .totalPaymentDue,
        .totalPrice,
        .totalTime,
        .tourBookingPage,
        .touristType,
        .track,
        .trackingNumber,
        .trackingUrl,
        .tracks,
        .trailer,
        .trailerWeight,
        .trainName,
        .trainNumber,
        .trainingSalary,
        .transFatContent,
        .transcript,
        .transitTime,
        .transitTimeLabel,
        .translationOfWork,
        .translator,
        .transmissionMethod,
        .travelBans,
        .trialDesign,
        .tributary,
        .tripOrigin,
        .typeOfBed,
        .typeOfGood,
        .typicalAgeRange,
        .typicalCreditsPerTerm,
        .typicalTest,
        .underName,
        .unitCode,
        .unitText,
        .unnamedSourcesPolicy,
        .unsaturatedFatContent,
        .uploadDate,
        .upvoteCount,
        .url,
        .urlTemplate,
        .usNPI,
        .usageInfo,
        .usedToDiagnose,
        .userInteractionCount,
        .usesDevice,
        .usesHealthPlanIdStandard,
        .utterances,
        .validFor,
        .validForMemberTier,
        .validFrom,
        .validIn,
        .validThrough,
        .validUntil,
        .value,
        .valueAddedTaxIncluded,
        .valueGroup,
        .valueMaxLength,
        .valueMinLength,
        .valueName,
        .valuePattern,
        .valueReference,
        .valueRequired,
        .variableMeasured,
        .variantCover,
        .variesBy,
        .vatID,
        .vehicleConfiguration,
        .vehicleEngine,
        .vehicleIdentificationNumber,
        .vehicleInteriorColor,
        .vehicleInteriorType,
        .vehicleModelDate,
        .vehicleSeatingCapacity,
        .vehicleSpecialUsage,
        .vehicleTransmission,
        .vendor,
        .verificationFactCheckingPolicy,
        .version,
        .video,
        .videoFormat,
        .videoFrameSize,
        .videoQuality,
        .volumeNumber,
        .warning,
        .warranty,
        .warrantyPromise,
        .warrantyScope,
        .webCheckinTime,
        .webFeed,
        .weight,
        .weightPercentage,
        .weightTotal,
        .wheelbase,
        .width,
        .winner,
        .wordCount,
        .workExample,
        .workFeatured,
        .workHours,
        .workLocation,
        .workPerformed,
        .workPresented,
        .workTranslation,
        .workload,
        .worksFor,
        .worstRating,
        .xpath,
        .yearBuilt,
        .yearlyRevenue,
        .yearsInOperation,
        .yield,
    ]
}
