extension SchemaOrg.PublicationIssue {

    public protocol `Protocol`:
        SchemaOrg.CreativeWork.`Protocol`,
        SchemaOrg.Domain.PageEnd,
        SchemaOrg.Domain.PageStart,
        SchemaOrg.Domain.Pagination
    {}
}

extension SchemaOrg.PublicationIssue.`Protocol` {

    public var issueNumber: SchemaOrg.Range.IssueNumber? {
        get { self[first: "issueNumber"] }
        set { self[first: "issueNumber"] = newValue }
    }
}
