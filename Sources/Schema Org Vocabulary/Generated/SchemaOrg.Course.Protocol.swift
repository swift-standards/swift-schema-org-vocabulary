extension SchemaOrg.Course {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.LearningResource.`Protocol`,
        SchemaOrg.Domain.AvailableLanguage,
        SchemaOrg.Domain.EducationalCredentialAwarded,
        SchemaOrg.Domain.FinancialAidEligible,
        SchemaOrg.Domain.NumberOfCredits,
        SchemaOrg.Domain.OccupationalCredentialAwarded
    {}
}

extension SchemaOrg.Course.`Protocol` {

    public var courseCode: Swift.String? {
        get { self[first: "courseCode"] }
        set { self[first: "courseCode"] = newValue }
    }

    public var coursePrerequisites: SchemaOrg.Range.CoursePrerequisites? {
        get { self[first: "coursePrerequisites"] }
        set { self[first: "coursePrerequisites"] = newValue }
    }

    public var hasCourseInstance: SchemaOrg.CourseInstance? {
        get { self[first: "hasCourseInstance"] }
        set { self[first: "hasCourseInstance"] = newValue }
    }

    public var syllabusSections: SchemaOrg.Syllabus? {
        get { self[first: "syllabusSections"] }
        set { self[first: "syllabusSections"] = newValue }
    }

    public var totalHistoricalEnrollment: Swift.Int? {
        get { self[first: "totalHistoricalEnrollment"] }
        set { self[first: "totalHistoricalEnrollment"] = newValue }
    }
}
