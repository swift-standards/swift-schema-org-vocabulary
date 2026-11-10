extension Generator {

    static let data: [Swift.String: Swift.String] = [
        "Text": "Swift.String",
        "CssSelectorType": "Swift.String",
        "XPathType": "Swift.String",
        "PronounceableText": "Swift.String",
        "Quantity": "Swift.String",
        "Distance": "Swift.String",
        "Energy": "Swift.String",
        "Mass": "Swift.String",
        "URL": "RFC_3986.URI",
        "Boolean": "Swift.Bool",
        "Number": "Swift.Double",
        "Float": "Swift.Double",
        "Integer": "Swift.Int",
        "Date": "ISO_8601.CalendarDate",
        "DateTime": "ISO_8601.DateTime",
        "Time": "ISO_8601.Time",
        "Duration": "ISO_8601.Duration",
        "DataType": "W3C_JSON_LD.Value",
    ]

    static let dataOrder = ["Boolean", "Integer", "Number", "Float", "Date", "DateTime", "Time", "Duration", "URL"]

    static let keywords: Swift.Set<Swift.String> = [
        "class", "default", "case", "enum", "struct", "protocol", "func", "var", "let", "import", "return",
        "self", "Self", "super", "init", "deinit", "extension", "operator", "static", "subscript", "typealias",
        "where", "while", "for", "in", "if", "else", "switch", "do", "repeat", "break", "continue", "throw",
        "throws", "try", "catch", "is", "as", "nil", "true", "false", "public", "private", "internal",
        "fileprivate", "open", "inout", "associatedtype", "guard", "defer", "fallthrough", "Any", "Type",
        "Protocol",
    ]

    static func identifier(_ name: Swift.String) -> Swift.String {
        keywords.contains(name) || (name.first?.isNumber ?? false) ? "`" + name + "`" : name
    }

    static func upper(_ name: Swift.String) -> Swift.String {
        name.prefix(1).uppercased() + name.dropFirst()
    }

    static func lower(_ name: Swift.String) -> Swift.String {
        let characters = Swift.Array(name)
        let run = characters.prefix { $0.isASCII && $0.isUppercase }.count
        let length =
            run == characters.count
            ? run
            : (characters[run].isLowercase && run > 2 ? run - 1 : Swift.min(run, 1))
        return Swift.String(characters.prefix(length)).lowercased() + Swift.String(characters.dropFirst(length))
    }

    static func swiftType(of name: Swift.String) -> Swift.String {
        data[name] ?? typeName(name)
    }

    static func typeName(_ name: Swift.String) -> Swift.String {
        "SchemaOrg." + identifier(name)
    }

    static func protocolName(_ name: Swift.String) -> Swift.String {
        typeName(name) + ".`Protocol`"
    }

    static func caseName(_ name: Swift.String) -> Swift.String {
        identifier(lower(name))
    }
}
