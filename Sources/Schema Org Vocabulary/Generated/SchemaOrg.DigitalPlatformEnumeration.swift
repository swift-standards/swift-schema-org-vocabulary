extension SchemaOrg {

    public enum DigitalPlatformEnumeration: SchemaOrg.Value, Swift.Hashable {

        case androidPlatform

        case desktopWebPlatform

        case genericWebPlatform

        case iosPlatform

        case mobileWebPlatform

        case instance(Instance)
    }
}

extension SchemaOrg.DigitalPlatformEnumeration {

    public var term: Swift.String? {
        switch self {
        case .androidPlatform:
            "AndroidPlatform"

        case .desktopWebPlatform:
            "DesktopWebPlatform"

        case .genericWebPlatform:
            "GenericWebPlatform"

        case .iosPlatform:
            "IOSPlatform"

        case .mobileWebPlatform:
            "MobileWebPlatform"

        case .instance:
            nil
        }
    }

    public init?(term: Swift.String) {
        switch term {
        case "AndroidPlatform":
            self = .androidPlatform
            return

        case "DesktopWebPlatform":
            self = .desktopWebPlatform
            return

        case "GenericWebPlatform":
            self = .genericWebPlatform
            return

        case "IOSPlatform":
            self = .iosPlatform
            return

        case "MobileWebPlatform":
            self = .mobileWebPlatform
            return

        default:
            break
        }
        return nil
    }

    public static func serialize(_ value: Self) -> W3C_JSON_LD.Value {
        switch value {
        case .androidPlatform:
            SchemaOrg.serialize(term: "AndroidPlatform")

        case .desktopWebPlatform:
            SchemaOrg.serialize(term: "DesktopWebPlatform")

        case .genericWebPlatform:
            SchemaOrg.serialize(term: "GenericWebPlatform")

        case .iosPlatform:
            SchemaOrg.serialize(term: "IOSPlatform")

        case .mobileWebPlatform:
            SchemaOrg.serialize(term: "MobileWebPlatform")

        case .instance(let value):
            .node(value.node)
        }
    }

    public static func deserialize(_ value: W3C_JSON_LD.Value) -> Self? {
        if let term = SchemaOrg.term(of: value), let member = Self(term: term) {
            return member
        }
        return Instance.deserialize(value).map(Self.instance)
    }
}
