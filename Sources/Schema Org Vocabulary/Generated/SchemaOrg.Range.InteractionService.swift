extension SchemaOrg.Range {

    public enum InteractionService: SchemaOrg.Value, Swift.Hashable {

        case softwareApplication(SchemaOrg.SoftwareApplication)

        case webSite(SchemaOrg.WebSite)
    }
}

extension SchemaOrg.Range.InteractionService {

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .softwareApplication(let value):
            SchemaOrg.SoftwareApplication.serialize(value)

        case .webSite(let value):
            SchemaOrg.WebSite.serialize(value)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let value = SchemaOrg.SoftwareApplication.deserialize(value) {
            return .softwareApplication(value)
        }
        if let value = SchemaOrg.WebSite.deserialize(value) {
            return .webSite(value)
        }
        return nil
    }
}
