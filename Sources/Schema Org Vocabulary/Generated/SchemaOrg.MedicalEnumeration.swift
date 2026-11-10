extension SchemaOrg {

    public enum MedicalEnumeration: SchemaOrg.Value, Swift.Hashable {

        case drugCostCategory(SchemaOrg.DrugCostCategory)

        case drugPregnancyCategory(SchemaOrg.DrugPregnancyCategory)

        case drugPrescriptionStatus(SchemaOrg.DrugPrescriptionStatus)

        case infectiousAgentClass(SchemaOrg.InfectiousAgentClass)

        case medicalAudienceType(SchemaOrg.MedicalAudienceType)

        case medicalDevicePurpose(SchemaOrg.MedicalDevicePurpose)

        case medicalEvidenceLevel(SchemaOrg.MedicalEvidenceLevel)

        case medicalImagingTechnique(SchemaOrg.MedicalImagingTechnique)

        case medicalObservationalStudyDesign(SchemaOrg.MedicalObservationalStudyDesign)

        case medicalProcedureType(SchemaOrg.MedicalProcedureType)

        case medicalSpecialty(SchemaOrg.MedicalSpecialty)

        case medicalStudyStatus(SchemaOrg.MedicalStudyStatus)

        case medicalTrialDesign(SchemaOrg.MedicalTrialDesign)

        case medicineSystem(SchemaOrg.MedicineSystem)

        case physicalExam(SchemaOrg.PhysicalExam)

        case instance(Instance)
    }
}

extension SchemaOrg.MedicalEnumeration {

    public var term: Swift.String? {
        switch self {
        case .drugCostCategory(let value):
            value.term

        case .drugPregnancyCategory(let value):
            value.term

        case .drugPrescriptionStatus(let value):
            value.term

        case .infectiousAgentClass(let value):
            value.term

        case .medicalAudienceType(let value):
            value.term

        case .medicalDevicePurpose(let value):
            value.term

        case .medicalEvidenceLevel(let value):
            value.term

        case .medicalImagingTechnique(let value):
            value.term

        case .medicalObservationalStudyDesign(let value):
            value.term

        case .medicalProcedureType(let value):
            value.term

        case .medicalSpecialty(let value):
            value.term

        case .medicalStudyStatus(let value):
            value.term

        case .medicalTrialDesign(let value):
            value.term

        case .medicineSystem(let value):
            value.term

        case .physicalExam(let value):
            value.term

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        if let value = SchemaOrg.DrugCostCategory(term: term) {
            self = .drugCostCategory(value)
            return
        }
        if let value = SchemaOrg.DrugPregnancyCategory(term: term) {
            self = .drugPregnancyCategory(value)
            return
        }
        if let value = SchemaOrg.DrugPrescriptionStatus(term: term) {
            self = .drugPrescriptionStatus(value)
            return
        }
        if let value = SchemaOrg.InfectiousAgentClass(term: term) {
            self = .infectiousAgentClass(value)
            return
        }
        if let value = SchemaOrg.MedicalAudienceType(term: term) {
            self = .medicalAudienceType(value)
            return
        }
        if let value = SchemaOrg.MedicalDevicePurpose(term: term) {
            self = .medicalDevicePurpose(value)
            return
        }
        if let value = SchemaOrg.MedicalEvidenceLevel(term: term) {
            self = .medicalEvidenceLevel(value)
            return
        }
        if let value = SchemaOrg.MedicalImagingTechnique(term: term) {
            self = .medicalImagingTechnique(value)
            return
        }
        if let value = SchemaOrg.MedicalObservationalStudyDesign(term: term) {
            self = .medicalObservationalStudyDesign(value)
            return
        }
        if let value = SchemaOrg.MedicalProcedureType(term: term) {
            self = .medicalProcedureType(value)
            return
        }
        if let value = SchemaOrg.MedicalSpecialty(term: term) {
            self = .medicalSpecialty(value)
            return
        }
        if let value = SchemaOrg.MedicalStudyStatus(term: term) {
            self = .medicalStudyStatus(value)
            return
        }
        if let value = SchemaOrg.MedicalTrialDesign(term: term) {
            self = .medicalTrialDesign(value)
            return
        }
        if let value = SchemaOrg.MedicineSystem(term: term) {
            self = .medicineSystem(value)
            return
        }
        if let value = SchemaOrg.PhysicalExam(term: term) {
            self = .physicalExam(value)
            return
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .drugCostCategory(let value):
            SchemaOrg.DrugCostCategory.serialize(value)

        case .drugPregnancyCategory(let value):
            SchemaOrg.DrugPregnancyCategory.serialize(value)

        case .drugPrescriptionStatus(let value):
            SchemaOrg.DrugPrescriptionStatus.serialize(value)

        case .infectiousAgentClass(let value):
            SchemaOrg.InfectiousAgentClass.serialize(value)

        case .medicalAudienceType(let value):
            SchemaOrg.MedicalAudienceType.serialize(value)

        case .medicalDevicePurpose(let value):
            SchemaOrg.MedicalDevicePurpose.serialize(value)

        case .medicalEvidenceLevel(let value):
            SchemaOrg.MedicalEvidenceLevel.serialize(value)

        case .medicalImagingTechnique(let value):
            SchemaOrg.MedicalImagingTechnique.serialize(value)

        case .medicalObservationalStudyDesign(let value):
            SchemaOrg.MedicalObservationalStudyDesign.serialize(value)

        case .medicalProcedureType(let value):
            SchemaOrg.MedicalProcedureType.serialize(value)

        case .medicalSpecialty(let value):
            SchemaOrg.MedicalSpecialty.serialize(value)

        case .medicalStudyStatus(let value):
            SchemaOrg.MedicalStudyStatus.serialize(value)

        case .medicalTrialDesign(let value):
            SchemaOrg.MedicalTrialDesign.serialize(value)

        case .medicineSystem(let value):
            SchemaOrg.MedicineSystem.serialize(value)

        case .physicalExam(let value):
            SchemaOrg.PhysicalExam.serialize(value)

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        if SchemaOrg.isTyped(value) {
            if let value = SchemaOrg.DrugCostCategory.deserialize(value) {
                return .drugCostCategory(value)
            }
            if let value = SchemaOrg.DrugPregnancyCategory.deserialize(value) {
                return .drugPregnancyCategory(value)
            }
            if let value = SchemaOrg.DrugPrescriptionStatus.deserialize(value) {
                return .drugPrescriptionStatus(value)
            }
            if let value = SchemaOrg.InfectiousAgentClass.deserialize(value) {
                return .infectiousAgentClass(value)
            }
            if let value = SchemaOrg.MedicalAudienceType.deserialize(value) {
                return .medicalAudienceType(value)
            }
            if let value = SchemaOrg.MedicalDevicePurpose.deserialize(value) {
                return .medicalDevicePurpose(value)
            }
            if let value = SchemaOrg.MedicalEvidenceLevel.deserialize(value) {
                return .medicalEvidenceLevel(value)
            }
            if let value = SchemaOrg.MedicalImagingTechnique.deserialize(value) {
                return .medicalImagingTechnique(value)
            }
            if let value = SchemaOrg.MedicalObservationalStudyDesign.deserialize(value) {
                return .medicalObservationalStudyDesign(value)
            }
            if let value = SchemaOrg.MedicalProcedureType.deserialize(value) {
                return .medicalProcedureType(value)
            }
            if let value = SchemaOrg.MedicalSpecialty.deserialize(value) {
                return .medicalSpecialty(value)
            }
            if let value = SchemaOrg.MedicalStudyStatus.deserialize(value) {
                return .medicalStudyStatus(value)
            }
            if let value = SchemaOrg.MedicalTrialDesign.deserialize(value) {
                return .medicalTrialDesign(value)
            }
            if let value = SchemaOrg.MedicineSystem.deserialize(value) {
                return .medicineSystem(value)
            }
            if let value = SchemaOrg.PhysicalExam.deserialize(value) {
                return .physicalExam(value)
            }
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
