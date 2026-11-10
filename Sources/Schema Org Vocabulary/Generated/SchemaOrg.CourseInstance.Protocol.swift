extension SchemaOrg.CourseInstance {

    public protocol `Protocol`: SchemaOrg.Event.`Protocol` {}
}

extension SchemaOrg.CourseInstance.`Protocol` {

    public var courseMode: SchemaOrg.Range.CourseMode? {
        get { self[first: "courseMode"] }
        set { self[first: "courseMode"] = newValue }
    }

    public var courseSchedule: SchemaOrg.Schedule? {
        get { self[first: "courseSchedule"] }
        set { self[first: "courseSchedule"] = newValue }
    }

    public var courseWorkload: Swift.String? {
        get { self[first: "courseWorkload"] }
        set { self[first: "courseWorkload"] = newValue }
    }

    public var instructor: SchemaOrg.Person? {
        get { self[first: "instructor"] }
        set { self[first: "instructor"] = newValue }
    }
}
