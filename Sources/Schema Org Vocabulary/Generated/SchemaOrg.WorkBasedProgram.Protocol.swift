extension SchemaOrg.WorkBasedProgram {

    public protocol `Protocol`:
        SchemaOrg.EducationalOccupationalProgram.`Protocol`,
        SchemaOrg.Domain.OccupationalCategory,
        SchemaOrg.Domain.TrainingSalary
    {}
}
