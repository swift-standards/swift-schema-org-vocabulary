extension SchemaOrg.DataDownload {

    public protocol `Protocol`:
        SchemaOrg.MediaObject.`Protocol`,
        SchemaOrg.Domain.MeasurementMethod,
        SchemaOrg.Domain.MeasurementTechnique
    {}
}
