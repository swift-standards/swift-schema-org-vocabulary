extension Schema_Org {

    public struct Value: Sendable, Hashable {

        public var value: W3C_JSON_LD.Value

        public init(_ value: W3C_JSON_LD.Value) {
            self.value = value
        }
    }
}

extension Schema_Org.Value {

    public init(_ node: Schema_Org.Node) {
        self.init(.node(node.node))
    }

    public init(_ member: Schema_Org.Member) {
        self.init(.string(member.iri))
    }

    public init(_ text: String) {
        self.init(.string(text))
    }

    public init(_ boolean: Bool) {
        self.init(.literal(W3C_JSON_LD.Literal(.bool(boolean))))
    }

    public init(_ number: Double) {
        let integral = number.rounded() == number ? Int(exactly: number) : nil
        self.init(.number(integral.map { RFC_8259.Number($0) } ?? RFC_8259.Number(number)))
    }

    public init<Integer: Swift.BinaryInteger>(_ integer: Integer) {
        self.init(.number(Int(exactly: integer).map { RFC_8259.Number($0) } ?? RFC_8259.Number(Double(integer))))
    }

    public static func url(_ url: RFC_3986.URI) -> Self {
        Self(.string(url.value))
    }

    public static func date(_ date: ISO_8601.CalendarDate) -> Self {
        Self(.string(date.extended))
    }

    public static func dateTime(_ dateTime: ISO_8601.DateTime) -> Self {
        Self(.string(dateTime.description))
    }

    public static func time(_ time: ISO_8601.Time) -> Self {
        Self(.string(time.description))
    }

    public static func duration(_ duration: ISO_8601.Duration) -> Self {
        Self(.string(duration.description))
    }

    public static func member(_ member: Schema_Org.Member) -> Self {
        Self(member)
    }
}

extension Schema_Org.Value: ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral {

    public init(stringLiteral value: String) {
        self.init(value)
    }

    public init(integerLiteral value: Int) {
        self.init(value)
    }

    public init(floatLiteral value: Double) {
        self.init(value)
    }
}

extension Schema_Org.Value {

    public var node: Schema_Org.Node? {
        guard let node = value.node, !node.types.isEmpty || !node.properties.isEmpty else { return nil }
        return Schema_Org.Node(node: node)
    }

    public var text: String? {
        value.literal?.string
    }

    public var number: Double? {
        guard let literal = value.literal else { return nil }
        return literal.number?.double ?? literal.string.flatMap(Double.init).flatMap { $0.isFinite ? $0 : nil }
    }

    public var integer: Int? {
        guard let literal = value.literal else { return nil }
        return literal.number.flatMap { $0.isInteger ? $0.int : nil } ?? literal.string.flatMap { Int($0) }
    }

    public var boolean: Bool? {
        if let boolean = value.literal?.bool { return boolean }
        return switch Schema_Org.term(of: value) {
        case "True": true
        case "False": false
        default: nil
        }
    }

    public var member: Schema_Org.Member? {
        Schema_Org.term(of: value).flatMap(Schema_Org.Member.named)
    }

    public var url: RFC_3986.URI? {
        guard let text = value.literal?.string ?? (value.node?.types.isEmpty == true ? value.node?.id : nil) else { return nil }
        do throws(RFC_3986.Error) {
            return try RFC_3986.URI(text)
        } catch {
            return nil
        }
    }

    public var date: ISO_8601.CalendarDate? {
        value.literal?.string.flatMap { ISO_8601.CalendarDate(extended: $0) }
    }

    public var dateTime: ISO_8601.DateTime? {
        guard let text = value.literal?.string else { return nil }
        do throws(ISO_8601.DateTime.Parser.Error) {
            return try ISO_8601.DateTime(text)
        } catch {
            return nil
        }
    }

    public var time: ISO_8601.Time? {
        guard let text = value.literal?.string else { return nil }
        do throws(ISO_8601.Time.Parser.Error) {
            return try ISO_8601.Time.Parser.parse(text)
        } catch {
            return nil
        }
    }

    public var duration: ISO_8601.Duration? {
        guard let text = value.literal?.string else { return nil }
        do throws(ISO_8601.Duration.Parser.Error) {
            return try ISO_8601.Duration(text)
        } catch {
            return nil
        }
    }
}
