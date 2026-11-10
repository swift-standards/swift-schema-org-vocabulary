extension SchemaOrg.Drug {

    public protocol `Protocol`:
        SchemaOrg.Product.`Protocol`,
        SchemaOrg.Substance.`Protocol`,
        SchemaOrg.Domain.ActiveIngredient,
        SchemaOrg.Domain.DoseSchedule,
        SchemaOrg.Domain.DrugUnit,
        SchemaOrg.Domain.IsProprietary,
        SchemaOrg.Domain.LegalStatus,
        SchemaOrg.Domain.MaximumIntake,
        SchemaOrg.Domain.MechanismOfAction,
        SchemaOrg.Domain.NonProprietaryName,
        SchemaOrg.Domain.ProprietaryName
    {}
}

extension SchemaOrg.Drug.`Protocol` {

    public var administrationRoute: Swift.String? {
        get { self[first: "administrationRoute"] }
        set { self[first: "administrationRoute"] = newValue }
    }

    public var alcoholWarning: Swift.String? {
        get { self[first: "alcoholWarning"] }
        set { self[first: "alcoholWarning"] = newValue }
    }

    public var availableStrength: SchemaOrg.DrugStrength? {
        get { self[first: "availableStrength"] }
        set { self[first: "availableStrength"] = newValue }
    }

    public var breastfeedingWarning: Swift.String? {
        get { self[first: "breastfeedingWarning"] }
        set { self[first: "breastfeedingWarning"] = newValue }
    }

    public var clincalPharmacology: Swift.String? {
        get { self[first: "clincalPharmacology"] }
        set { self[first: "clincalPharmacology"] = newValue }
    }

    public var clinicalPharmacology: Swift.String? {
        get { self[first: "clinicalPharmacology"] }
        set { self[first: "clinicalPharmacology"] = newValue }
    }

    public var dosageForm: Swift.String? {
        get { self[first: "dosageForm"] }
        set { self[first: "dosageForm"] = newValue }
    }

    public var drugClass: SchemaOrg.DrugClass? {
        get { self[first: "drugClass"] }
        set { self[first: "drugClass"] = newValue }
    }

    public var foodWarning: Swift.String? {
        get { self[first: "foodWarning"] }
        set { self[first: "foodWarning"] = newValue }
    }

    public var includedInHealthInsurancePlan: SchemaOrg.HealthInsurancePlan? {
        get { self[first: "includedInHealthInsurancePlan"] }
        set { self[first: "includedInHealthInsurancePlan"] = newValue }
    }

    public var interactingDrug: SchemaOrg.Drug? {
        get { self[first: "interactingDrug"] }
        set { self[first: "interactingDrug"] = newValue }
    }

    public var isAvailableGenerically: Swift.Bool? {
        get { self[first: "isAvailableGenerically"] }
        set { self[first: "isAvailableGenerically"] = newValue }
    }

    public var labelDetails: RFC_3986.URI? {
        get { self[first: "labelDetails"] }
        set { self[first: "labelDetails"] = newValue }
    }

    public var overdosage: Swift.String? {
        get { self[first: "overdosage"] }
        set { self[first: "overdosage"] = newValue }
    }

    public var pregnancyCategory: SchemaOrg.DrugPregnancyCategory? {
        get { self[first: "pregnancyCategory"] }
        set { self[first: "pregnancyCategory"] = newValue }
    }

    public var pregnancyWarning: Swift.String? {
        get { self[first: "pregnancyWarning"] }
        set { self[first: "pregnancyWarning"] = newValue }
    }

    public var prescribingInfo: RFC_3986.URI? {
        get { self[first: "prescribingInfo"] }
        set { self[first: "prescribingInfo"] = newValue }
    }

    public var prescriptionStatus: SchemaOrg.Range.PrescriptionStatus? {
        get { self[first: "prescriptionStatus"] }
        set { self[first: "prescriptionStatus"] = newValue }
    }

    public var relatedDrug: SchemaOrg.Drug? {
        get { self[first: "relatedDrug"] }
        set { self[first: "relatedDrug"] = newValue }
    }

    public var rxcui: Swift.String? {
        get { self[first: "rxcui"] }
        set { self[first: "rxcui"] = newValue }
    }

    public var warning: SchemaOrg.Range.Warning? {
        get { self[first: "warning"] }
        set { self[first: "warning"] = newValue }
    }
}
