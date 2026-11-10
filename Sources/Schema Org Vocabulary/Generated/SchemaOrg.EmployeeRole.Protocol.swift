extension SchemaOrg.EmployeeRole {

    public protocol `Protocol`:
        SchemaOrg.OrganizationRole.`Protocol`,
        SchemaOrg.Domain.BaseSalary,
        SchemaOrg.Domain.SalaryCurrency
    {}
}
