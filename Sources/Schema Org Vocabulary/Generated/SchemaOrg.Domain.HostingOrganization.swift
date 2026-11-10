extension SchemaOrg.Domain {

    public protocol HostingOrganization: SchemaOrg.Resource {}
}

extension SchemaOrg.Domain.HostingOrganization {

    public var hostingOrganization: SchemaOrg.Organization? {
        get { self[first: "hostingOrganization"] }
        set { self[first: "hostingOrganization"] = newValue }
    }
}
