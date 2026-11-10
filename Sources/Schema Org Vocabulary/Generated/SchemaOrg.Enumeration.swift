extension SchemaOrg {

    public enum Enumeration: SchemaOrg.Value, Swift.Hashable {

        case adultOrientedEnumeration(SchemaOrg.AdultOrientedEnumeration)

        case boardingPolicyType(SchemaOrg.BoardingPolicyType)

        case bookFormatType(SchemaOrg.BookFormatType)

        case businessEntityType(SchemaOrg.BusinessEntityType)

        case businessFunction(SchemaOrg.BusinessFunction)

        case carUsageType(SchemaOrg.CarUsageType)

        case certificationStatusEnumeration(SchemaOrg.CertificationStatusEnumeration)

        case contactPointOption(SchemaOrg.ContactPointOption)

        case dayOfWeek(SchemaOrg.DayOfWeek)

        case deliveryMethod(SchemaOrg.DeliveryMethod)

        case digitalDocumentPermissionType(SchemaOrg.DigitalDocumentPermissionType)

        case digitalPlatformEnumeration(SchemaOrg.DigitalPlatformEnumeration)

        case energyEfficiencyEnumeration(SchemaOrg.EnergyEfficiencyEnumeration)

        case eventAttendanceModeEnumeration(SchemaOrg.EventAttendanceModeEnumeration)

        case fulfillmentTypeEnumeration(SchemaOrg.FulfillmentTypeEnumeration)

        case gameAvailabilityEnumeration(SchemaOrg.GameAvailabilityEnumeration)

        case gamePlayMode(SchemaOrg.GamePlayMode)

        case genderType(SchemaOrg.GenderType)

        case governmentBenefitsType(SchemaOrg.GovernmentBenefitsType)

        case healthAspectEnumeration(SchemaOrg.HealthAspectEnumeration)

        case incentiveQualifiedExpenseType(SchemaOrg.IncentiveQualifiedExpenseType)

        case incentiveStatus(SchemaOrg.IncentiveStatus)

        case incentiveType(SchemaOrg.IncentiveType)

        case itemAvailability(SchemaOrg.ItemAvailability)

        case itemListOrderType(SchemaOrg.ItemListOrderType)

        case legalValueLevel(SchemaOrg.LegalValueLevel)

        case mapCategoryType(SchemaOrg.MapCategoryType)

        case measurementMethodEnum(SchemaOrg.MeasurementMethodEnum)

        case measurementTypeEnumeration(SchemaOrg.MeasurementTypeEnumeration)

        case mediaEnumeration(SchemaOrg.MediaEnumeration)

        case mediaManipulationRatingEnumeration(SchemaOrg.MediaManipulationRatingEnumeration)

        case medicalEnumeration(SchemaOrg.MedicalEnumeration)

        case merchantReturnEnumeration(SchemaOrg.MerchantReturnEnumeration)

        case musicAlbumProductionType(SchemaOrg.MusicAlbumProductionType)

        case musicAlbumReleaseType(SchemaOrg.MusicAlbumReleaseType)

        case musicReleaseFormatType(SchemaOrg.MusicReleaseFormatType)

        case nonprofitType(SchemaOrg.NonprofitType)

        case offerItemCondition(SchemaOrg.OfferItemCondition)

        case paymentMethodType(SchemaOrg.PaymentMethodType)

        case physicalActivityCategory(SchemaOrg.PhysicalActivityCategory)

        case priceComponentTypeEnumeration(SchemaOrg.PriceComponentTypeEnumeration)

        case priceTypeEnumeration(SchemaOrg.PriceTypeEnumeration)

        case productReturnEnumeration(SchemaOrg.ProductReturnEnumeration)

        case purchaseType(SchemaOrg.PurchaseType)

        case qualitativeValue(SchemaOrg.QualitativeValue)

        case refundTypeEnumeration(SchemaOrg.RefundTypeEnumeration)

        case restrictedDiet(SchemaOrg.RestrictedDiet)

        case returnFeesEnumeration(SchemaOrg.ReturnFeesEnumeration)

        case returnLabelSourceEnumeration(SchemaOrg.ReturnLabelSourceEnumeration)

        case returnMethodEnumeration(SchemaOrg.ReturnMethodEnumeration)

        case rsvpResponseType(SchemaOrg.RsvpResponseType)

        case sizeGroupEnumeration(SchemaOrg.SizeGroupEnumeration)

        case sizeSystemEnumeration(SchemaOrg.SizeSystemEnumeration)

        case specialty(SchemaOrg.Specialty)

        case statusEnumeration(SchemaOrg.StatusEnumeration)

        case tierBenefitEnumeration(SchemaOrg.TierBenefitEnumeration)

        case warrantyScope(SchemaOrg.WarrantyScope)

        case instance(Instance)
    }
}

extension SchemaOrg.Enumeration {

    public var term: Swift.String? {
        switch self {
        case .adultOrientedEnumeration(let value):
            value.term

        case .boardingPolicyType(let value):
            value.term

        case .bookFormatType(let value):
            value.term

        case .businessEntityType(let value):
            value.term

        case .businessFunction(let value):
            value.term

        case .carUsageType(let value):
            value.term

        case .certificationStatusEnumeration(let value):
            value.term

        case .contactPointOption(let value):
            value.term

        case .dayOfWeek(let value):
            value.term

        case .deliveryMethod(let value):
            value.term

        case .digitalDocumentPermissionType(let value):
            value.term

        case .digitalPlatformEnumeration(let value):
            value.term

        case .energyEfficiencyEnumeration(let value):
            value.term

        case .eventAttendanceModeEnumeration(let value):
            value.term

        case .fulfillmentTypeEnumeration(let value):
            value.term

        case .gameAvailabilityEnumeration(let value):
            value.term

        case .gamePlayMode(let value):
            value.term

        case .genderType(let value):
            value.term

        case .governmentBenefitsType(let value):
            value.term

        case .healthAspectEnumeration(let value):
            value.term

        case .incentiveQualifiedExpenseType(let value):
            value.term

        case .incentiveStatus(let value):
            value.term

        case .incentiveType(let value):
            value.term

        case .itemAvailability(let value):
            value.term

        case .itemListOrderType(let value):
            value.term

        case .legalValueLevel(let value):
            value.term

        case .mapCategoryType(let value):
            value.term

        case .measurementMethodEnum(let value):
            value.term

        case .measurementTypeEnumeration(let value):
            value.term

        case .mediaEnumeration(let value):
            value.term

        case .mediaManipulationRatingEnumeration(let value):
            value.term

        case .medicalEnumeration(let value):
            value.term

        case .merchantReturnEnumeration(let value):
            value.term

        case .musicAlbumProductionType(let value):
            value.term

        case .musicAlbumReleaseType(let value):
            value.term

        case .musicReleaseFormatType(let value):
            value.term

        case .nonprofitType(let value):
            value.term

        case .offerItemCondition(let value):
            value.term

        case .paymentMethodType(let value):
            value.term

        case .physicalActivityCategory(let value):
            value.term

        case .priceComponentTypeEnumeration(let value):
            value.term

        case .priceTypeEnumeration(let value):
            value.term

        case .productReturnEnumeration(let value):
            value.term

        case .purchaseType(let value):
            value.term

        case .qualitativeValue(let value):
            value.term

        case .refundTypeEnumeration(let value):
            value.term

        case .restrictedDiet(let value):
            value.term

        case .returnFeesEnumeration(let value):
            value.term

        case .returnLabelSourceEnumeration(let value):
            value.term

        case .returnMethodEnumeration(let value):
            value.term

        case .rsvpResponseType(let value):
            value.term

        case .sizeGroupEnumeration(let value):
            value.term

        case .sizeSystemEnumeration(let value):
            value.term

        case .specialty(let value):
            value.term

        case .statusEnumeration(let value):
            value.term

        case .tierBenefitEnumeration(let value):
            value.term

        case .warrantyScope(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.AdultOrientedEnumeration(term: term) {
            self = .adultOrientedEnumeration(value)
            return
        }
        if let value = SchemaOrg.BoardingPolicyType(term: term) {
            self = .boardingPolicyType(value)
            return
        }
        if let value = SchemaOrg.BookFormatType(term: term) {
            self = .bookFormatType(value)
            return
        }
        if let value = SchemaOrg.BusinessEntityType(term: term) {
            self = .businessEntityType(value)
            return
        }
        if let value = SchemaOrg.BusinessFunction(term: term) {
            self = .businessFunction(value)
            return
        }
        if let value = SchemaOrg.CarUsageType(term: term) {
            self = .carUsageType(value)
            return
        }
        if let value = SchemaOrg.CertificationStatusEnumeration(term: term) {
            self = .certificationStatusEnumeration(value)
            return
        }
        if let value = SchemaOrg.ContactPointOption(term: term) {
            self = .contactPointOption(value)
            return
        }
        if let value = SchemaOrg.DayOfWeek(term: term) {
            self = .dayOfWeek(value)
            return
        }
        if let value = SchemaOrg.DeliveryMethod(term: term) {
            self = .deliveryMethod(value)
            return
        }
        if let value = SchemaOrg.DigitalDocumentPermissionType(term: term) {
            self = .digitalDocumentPermissionType(value)
            return
        }
        if let value = SchemaOrg.DigitalPlatformEnumeration(term: term) {
            self = .digitalPlatformEnumeration(value)
            return
        }
        if let value = SchemaOrg.EnergyEfficiencyEnumeration(term: term) {
            self = .energyEfficiencyEnumeration(value)
            return
        }
        if let value = SchemaOrg.EventAttendanceModeEnumeration(term: term) {
            self = .eventAttendanceModeEnumeration(value)
            return
        }
        if let value = SchemaOrg.FulfillmentTypeEnumeration(term: term) {
            self = .fulfillmentTypeEnumeration(value)
            return
        }
        if let value = SchemaOrg.GameAvailabilityEnumeration(term: term) {
            self = .gameAvailabilityEnumeration(value)
            return
        }
        if let value = SchemaOrg.GamePlayMode(term: term) {
            self = .gamePlayMode(value)
            return
        }
        if let value = SchemaOrg.GenderType(term: term) {
            self = .genderType(value)
            return
        }
        if let value = SchemaOrg.GovernmentBenefitsType(term: term) {
            self = .governmentBenefitsType(value)
            return
        }
        if let value = SchemaOrg.HealthAspectEnumeration(term: term) {
            self = .healthAspectEnumeration(value)
            return
        }
        if let value = SchemaOrg.IncentiveQualifiedExpenseType(term: term) {
            self = .incentiveQualifiedExpenseType(value)
            return
        }
        if let value = SchemaOrg.IncentiveStatus(term: term) {
            self = .incentiveStatus(value)
            return
        }
        if let value = SchemaOrg.IncentiveType(term: term) {
            self = .incentiveType(value)
            return
        }
        if let value = SchemaOrg.ItemAvailability(term: term) {
            self = .itemAvailability(value)
            return
        }
        if let value = SchemaOrg.ItemListOrderType(term: term) {
            self = .itemListOrderType(value)
            return
        }
        if let value = SchemaOrg.LegalValueLevel(term: term) {
            self = .legalValueLevel(value)
            return
        }
        if let value = SchemaOrg.MapCategoryType(term: term) {
            self = .mapCategoryType(value)
            return
        }
        if let value = SchemaOrg.MeasurementMethodEnum(term: term) {
            self = .measurementMethodEnum(value)
            return
        }
        if let value = SchemaOrg.MeasurementTypeEnumeration(term: term) {
            self = .measurementTypeEnumeration(value)
            return
        }
        if let value = SchemaOrg.MediaEnumeration(term: term) {
            self = .mediaEnumeration(value)
            return
        }
        if let value = SchemaOrg.MediaManipulationRatingEnumeration(term: term) {
            self = .mediaManipulationRatingEnumeration(value)
            return
        }
        if let value = SchemaOrg.MedicalEnumeration(term: term) {
            self = .medicalEnumeration(value)
            return
        }
        if let value = SchemaOrg.MerchantReturnEnumeration(term: term) {
            self = .merchantReturnEnumeration(value)
            return
        }
        if let value = SchemaOrg.MusicAlbumProductionType(term: term) {
            self = .musicAlbumProductionType(value)
            return
        }
        if let value = SchemaOrg.MusicAlbumReleaseType(term: term) {
            self = .musicAlbumReleaseType(value)
            return
        }
        if let value = SchemaOrg.MusicReleaseFormatType(term: term) {
            self = .musicReleaseFormatType(value)
            return
        }
        if let value = SchemaOrg.NonprofitType(term: term) {
            self = .nonprofitType(value)
            return
        }
        if let value = SchemaOrg.OfferItemCondition(term: term) {
            self = .offerItemCondition(value)
            return
        }
        if let value = SchemaOrg.PaymentMethodType(term: term) {
            self = .paymentMethodType(value)
            return
        }
        if let value = SchemaOrg.PhysicalActivityCategory(term: term) {
            self = .physicalActivityCategory(value)
            return
        }
        if let value = SchemaOrg.PriceComponentTypeEnumeration(term: term) {
            self = .priceComponentTypeEnumeration(value)
            return
        }
        if let value = SchemaOrg.PriceTypeEnumeration(term: term) {
            self = .priceTypeEnumeration(value)
            return
        }
        if let value = SchemaOrg.ProductReturnEnumeration(term: term) {
            self = .productReturnEnumeration(value)
            return
        }
        if let value = SchemaOrg.PurchaseType(term: term) {
            self = .purchaseType(value)
            return
        }
        if let value = SchemaOrg.QualitativeValue(term: term) {
            self = .qualitativeValue(value)
            return
        }
        if let value = SchemaOrg.RefundTypeEnumeration(term: term) {
            self = .refundTypeEnumeration(value)
            return
        }
        if let value = SchemaOrg.RestrictedDiet(term: term) {
            self = .restrictedDiet(value)
            return
        }
        if let value = SchemaOrg.ReturnFeesEnumeration(term: term) {
            self = .returnFeesEnumeration(value)
            return
        }
        if let value = SchemaOrg.ReturnLabelSourceEnumeration(term: term) {
            self = .returnLabelSourceEnumeration(value)
            return
        }
        if let value = SchemaOrg.ReturnMethodEnumeration(term: term) {
            self = .returnMethodEnumeration(value)
            return
        }
        if let value = SchemaOrg.RsvpResponseType(term: term) {
            self = .rsvpResponseType(value)
            return
        }
        if let value = SchemaOrg.SizeGroupEnumeration(term: term) {
            self = .sizeGroupEnumeration(value)
            return
        }
        if let value = SchemaOrg.SizeSystemEnumeration(term: term) {
            self = .sizeSystemEnumeration(value)
            return
        }
        if let value = SchemaOrg.Specialty(term: term) {
            self = .specialty(value)
            return
        }
        if let value = SchemaOrg.StatusEnumeration(term: term) {
            self = .statusEnumeration(value)
            return
        }
        if let value = SchemaOrg.TierBenefitEnumeration(term: term) {
            self = .tierBenefitEnumeration(value)
            return
        }
        if let value = SchemaOrg.WarrantyScope(term: term) {
            self = .warrantyScope(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .adultOrientedEnumeration(let value):
            SchemaOrg.AdultOrientedEnumeration.serialize(value)

        case .boardingPolicyType(let value):
            SchemaOrg.BoardingPolicyType.serialize(value)

        case .bookFormatType(let value):
            SchemaOrg.BookFormatType.serialize(value)

        case .businessEntityType(let value):
            SchemaOrg.BusinessEntityType.serialize(value)

        case .businessFunction(let value):
            SchemaOrg.BusinessFunction.serialize(value)

        case .carUsageType(let value):
            SchemaOrg.CarUsageType.serialize(value)

        case .certificationStatusEnumeration(let value):
            SchemaOrg.CertificationStatusEnumeration.serialize(value)

        case .contactPointOption(let value):
            SchemaOrg.ContactPointOption.serialize(value)

        case .dayOfWeek(let value):
            SchemaOrg.DayOfWeek.serialize(value)

        case .deliveryMethod(let value):
            SchemaOrg.DeliveryMethod.serialize(value)

        case .digitalDocumentPermissionType(let value):
            SchemaOrg.DigitalDocumentPermissionType.serialize(value)

        case .digitalPlatformEnumeration(let value):
            SchemaOrg.DigitalPlatformEnumeration.serialize(value)

        case .energyEfficiencyEnumeration(let value):
            SchemaOrg.EnergyEfficiencyEnumeration.serialize(value)

        case .eventAttendanceModeEnumeration(let value):
            SchemaOrg.EventAttendanceModeEnumeration.serialize(value)

        case .fulfillmentTypeEnumeration(let value):
            SchemaOrg.FulfillmentTypeEnumeration.serialize(value)

        case .gameAvailabilityEnumeration(let value):
            SchemaOrg.GameAvailabilityEnumeration.serialize(value)

        case .gamePlayMode(let value):
            SchemaOrg.GamePlayMode.serialize(value)

        case .genderType(let value):
            SchemaOrg.GenderType.serialize(value)

        case .governmentBenefitsType(let value):
            SchemaOrg.GovernmentBenefitsType.serialize(value)

        case .healthAspectEnumeration(let value):
            SchemaOrg.HealthAspectEnumeration.serialize(value)

        case .incentiveQualifiedExpenseType(let value):
            SchemaOrg.IncentiveQualifiedExpenseType.serialize(value)

        case .incentiveStatus(let value):
            SchemaOrg.IncentiveStatus.serialize(value)

        case .incentiveType(let value):
            SchemaOrg.IncentiveType.serialize(value)

        case .itemAvailability(let value):
            SchemaOrg.ItemAvailability.serialize(value)

        case .itemListOrderType(let value):
            SchemaOrg.ItemListOrderType.serialize(value)

        case .legalValueLevel(let value):
            SchemaOrg.LegalValueLevel.serialize(value)

        case .mapCategoryType(let value):
            SchemaOrg.MapCategoryType.serialize(value)

        case .measurementMethodEnum(let value):
            SchemaOrg.MeasurementMethodEnum.serialize(value)

        case .measurementTypeEnumeration(let value):
            SchemaOrg.MeasurementTypeEnumeration.serialize(value)

        case .mediaEnumeration(let value):
            SchemaOrg.MediaEnumeration.serialize(value)

        case .mediaManipulationRatingEnumeration(let value):
            SchemaOrg.MediaManipulationRatingEnumeration.serialize(value)

        case .medicalEnumeration(let value):
            SchemaOrg.MedicalEnumeration.serialize(value)

        case .merchantReturnEnumeration(let value):
            SchemaOrg.MerchantReturnEnumeration.serialize(value)

        case .musicAlbumProductionType(let value):
            SchemaOrg.MusicAlbumProductionType.serialize(value)

        case .musicAlbumReleaseType(let value):
            SchemaOrg.MusicAlbumReleaseType.serialize(value)

        case .musicReleaseFormatType(let value):
            SchemaOrg.MusicReleaseFormatType.serialize(value)

        case .nonprofitType(let value):
            SchemaOrg.NonprofitType.serialize(value)

        case .offerItemCondition(let value):
            SchemaOrg.OfferItemCondition.serialize(value)

        case .paymentMethodType(let value):
            SchemaOrg.PaymentMethodType.serialize(value)

        case .physicalActivityCategory(let value):
            SchemaOrg.PhysicalActivityCategory.serialize(value)

        case .priceComponentTypeEnumeration(let value):
            SchemaOrg.PriceComponentTypeEnumeration.serialize(value)

        case .priceTypeEnumeration(let value):
            SchemaOrg.PriceTypeEnumeration.serialize(value)

        case .productReturnEnumeration(let value):
            SchemaOrg.ProductReturnEnumeration.serialize(value)

        case .purchaseType(let value):
            SchemaOrg.PurchaseType.serialize(value)

        case .qualitativeValue(let value):
            SchemaOrg.QualitativeValue.serialize(value)

        case .refundTypeEnumeration(let value):
            SchemaOrg.RefundTypeEnumeration.serialize(value)

        case .restrictedDiet(let value):
            SchemaOrg.RestrictedDiet.serialize(value)

        case .returnFeesEnumeration(let value):
            SchemaOrg.ReturnFeesEnumeration.serialize(value)

        case .returnLabelSourceEnumeration(let value):
            SchemaOrg.ReturnLabelSourceEnumeration.serialize(value)

        case .returnMethodEnumeration(let value):
            SchemaOrg.ReturnMethodEnumeration.serialize(value)

        case .rsvpResponseType(let value):
            SchemaOrg.RsvpResponseType.serialize(value)

        case .sizeGroupEnumeration(let value):
            SchemaOrg.SizeGroupEnumeration.serialize(value)

        case .sizeSystemEnumeration(let value):
            SchemaOrg.SizeSystemEnumeration.serialize(value)

        case .specialty(let value):
            SchemaOrg.Specialty.serialize(value)

        case .statusEnumeration(let value):
            SchemaOrg.StatusEnumeration.serialize(value)

        case .tierBenefitEnumeration(let value):
            SchemaOrg.TierBenefitEnumeration.serialize(value)

        case .warrantyScope(let value):
            SchemaOrg.WarrantyScope.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.AdultOrientedEnumeration.deserialize(value) {
                return .adultOrientedEnumeration(value)
            }
            if let value = SchemaOrg.BoardingPolicyType.deserialize(value) {
                return .boardingPolicyType(value)
            }
            if let value = SchemaOrg.BookFormatType.deserialize(value) {
                return .bookFormatType(value)
            }
            if let value = SchemaOrg.BusinessEntityType.deserialize(value) {
                return .businessEntityType(value)
            }
            if let value = SchemaOrg.BusinessFunction.deserialize(value) {
                return .businessFunction(value)
            }
            if let value = SchemaOrg.CarUsageType.deserialize(value) {
                return .carUsageType(value)
            }
            if let value = SchemaOrg.CertificationStatusEnumeration.deserialize(value) {
                return .certificationStatusEnumeration(value)
            }
            if let value = SchemaOrg.ContactPointOption.deserialize(value) {
                return .contactPointOption(value)
            }
            if let value = SchemaOrg.DayOfWeek.deserialize(value) {
                return .dayOfWeek(value)
            }
            if let value = SchemaOrg.DeliveryMethod.deserialize(value) {
                return .deliveryMethod(value)
            }
            if let value = SchemaOrg.DigitalDocumentPermissionType.deserialize(value) {
                return .digitalDocumentPermissionType(value)
            }
            if let value = SchemaOrg.DigitalPlatformEnumeration.deserialize(value) {
                return .digitalPlatformEnumeration(value)
            }
            if let value = SchemaOrg.EnergyEfficiencyEnumeration.deserialize(value) {
                return .energyEfficiencyEnumeration(value)
            }
            if let value = SchemaOrg.EventAttendanceModeEnumeration.deserialize(value) {
                return .eventAttendanceModeEnumeration(value)
            }
            if let value = SchemaOrg.FulfillmentTypeEnumeration.deserialize(value) {
                return .fulfillmentTypeEnumeration(value)
            }
            if let value = SchemaOrg.GameAvailabilityEnumeration.deserialize(value) {
                return .gameAvailabilityEnumeration(value)
            }
            if let value = SchemaOrg.GamePlayMode.deserialize(value) {
                return .gamePlayMode(value)
            }
            if let value = SchemaOrg.GenderType.deserialize(value) {
                return .genderType(value)
            }
            if let value = SchemaOrg.GovernmentBenefitsType.deserialize(value) {
                return .governmentBenefitsType(value)
            }
            if let value = SchemaOrg.HealthAspectEnumeration.deserialize(value) {
                return .healthAspectEnumeration(value)
            }
            if let value = SchemaOrg.IncentiveQualifiedExpenseType.deserialize(value) {
                return .incentiveQualifiedExpenseType(value)
            }
            if let value = SchemaOrg.IncentiveStatus.deserialize(value) {
                return .incentiveStatus(value)
            }
            if let value = SchemaOrg.IncentiveType.deserialize(value) {
                return .incentiveType(value)
            }
            if let value = SchemaOrg.ItemAvailability.deserialize(value) {
                return .itemAvailability(value)
            }
            if let value = SchemaOrg.ItemListOrderType.deserialize(value) {
                return .itemListOrderType(value)
            }
            if let value = SchemaOrg.LegalValueLevel.deserialize(value) {
                return .legalValueLevel(value)
            }
            if let value = SchemaOrg.MapCategoryType.deserialize(value) {
                return .mapCategoryType(value)
            }
            if let value = SchemaOrg.MeasurementMethodEnum.deserialize(value) {
                return .measurementMethodEnum(value)
            }
            if let value = SchemaOrg.MeasurementTypeEnumeration.deserialize(value) {
                return .measurementTypeEnumeration(value)
            }
            if let value = SchemaOrg.MediaEnumeration.deserialize(value) {
                return .mediaEnumeration(value)
            }
            if let value = SchemaOrg.MediaManipulationRatingEnumeration.deserialize(value) {
                return .mediaManipulationRatingEnumeration(value)
            }
            if let value = SchemaOrg.MedicalEnumeration.deserialize(value) {
                return .medicalEnumeration(value)
            }
            if let value = SchemaOrg.MerchantReturnEnumeration.deserialize(value) {
                return .merchantReturnEnumeration(value)
            }
            if let value = SchemaOrg.MusicAlbumProductionType.deserialize(value) {
                return .musicAlbumProductionType(value)
            }
            if let value = SchemaOrg.MusicAlbumReleaseType.deserialize(value) {
                return .musicAlbumReleaseType(value)
            }
            if let value = SchemaOrg.MusicReleaseFormatType.deserialize(value) {
                return .musicReleaseFormatType(value)
            }
            if let value = SchemaOrg.NonprofitType.deserialize(value) {
                return .nonprofitType(value)
            }
            if let value = SchemaOrg.OfferItemCondition.deserialize(value) {
                return .offerItemCondition(value)
            }
            if let value = SchemaOrg.PaymentMethodType.deserialize(value) {
                return .paymentMethodType(value)
            }
            if let value = SchemaOrg.PhysicalActivityCategory.deserialize(value) {
                return .physicalActivityCategory(value)
            }
            if let value = SchemaOrg.PriceComponentTypeEnumeration.deserialize(value) {
                return .priceComponentTypeEnumeration(value)
            }
            if let value = SchemaOrg.PriceTypeEnumeration.deserialize(value) {
                return .priceTypeEnumeration(value)
            }
            if let value = SchemaOrg.ProductReturnEnumeration.deserialize(value) {
                return .productReturnEnumeration(value)
            }
            if let value = SchemaOrg.PurchaseType.deserialize(value) {
                return .purchaseType(value)
            }
            if let value = SchemaOrg.QualitativeValue.deserialize(value) {
                return .qualitativeValue(value)
            }
            if let value = SchemaOrg.RefundTypeEnumeration.deserialize(value) {
                return .refundTypeEnumeration(value)
            }
            if let value = SchemaOrg.RestrictedDiet.deserialize(value) {
                return .restrictedDiet(value)
            }
            if let value = SchemaOrg.ReturnFeesEnumeration.deserialize(value) {
                return .returnFeesEnumeration(value)
            }
            if let value = SchemaOrg.ReturnLabelSourceEnumeration.deserialize(value) {
                return .returnLabelSourceEnumeration(value)
            }
            if let value = SchemaOrg.ReturnMethodEnumeration.deserialize(value) {
                return .returnMethodEnumeration(value)
            }
            if let value = SchemaOrg.RsvpResponseType.deserialize(value) {
                return .rsvpResponseType(value)
            }
            if let value = SchemaOrg.SizeGroupEnumeration.deserialize(value) {
                return .sizeGroupEnumeration(value)
            }
            if let value = SchemaOrg.SizeSystemEnumeration.deserialize(value) {
                return .sizeSystemEnumeration(value)
            }
            if let value = SchemaOrg.Specialty.deserialize(value) {
                return .specialty(value)
            }
            if let value = SchemaOrg.StatusEnumeration.deserialize(value) {
                return .statusEnumeration(value)
            }
            if let value = SchemaOrg.TierBenefitEnumeration.deserialize(value) {
                return .tierBenefitEnumeration(value)
            }
            if let value = SchemaOrg.WarrantyScope.deserialize(value) {
                return .warrantyScope(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
