# swift-schema-org-vocabulary

Use this package when you describe a page, an app, a product or a person with schema.org structured data, or read such data back. Every schema.org type is a Swift value: build one with its initializer, such as `SchemaOrg.SoftwareApplication(name:url:operatingSystem:offers:)`, and write it with `JSONLD.Document(app).bytes`. Read one with `SchemaOrg.SoftwareApplication.instances(in:)` from a `JSONLD.Document`. Set several values of one property with a key, as in `list[.itemListElement] = [...]`. The JSON-LD itself comes from swift-w3c-json-ld.

```swift
JSONLD.Document(SchemaOrg.SoftwareApplication(name: app.name, url: app.page, operatingSystem: .macOS, offers: .free)).bytes
```

The types are generated from schema.org's own vocabulary release, the `schemaorg-current-https.jsonld` file of version 30.1 (16 September 2026), pending and extension terms included. The generator reads that file and writes `Sources/Schema Org Vocabulary/Generated`, one file per type, range, domain and key group; it is not kept in this repository. The types refer to each other through their properties' ranges in cycles, Thing to CreativeWork and back, so they cannot be split into modules that depend on each other in one direction. They stay one module, which a full debug rebuild compiles in about 70 seconds on an Apple silicon Mac.

## Laws

- `SchemaOrg.version` is the schema.org release the types were generated from.
- Each schema.org type that is neither a data type nor an enumeration is a struct with an optional property for every property of the type and its ancestors. A type is a `SchemaOrg.<Type>.Protocol` too, which refines the protocol of each type it inherits from, so a `SchemaOrg.SoftwareApplication` is a `SchemaOrg.CreativeWork.Protocol` and a `SchemaOrg.Thing.Protocol`.
- The initializer takes `id`, then Thing's properties, then the type's own, then those of each ancestor from the nearest to the farthest, each group in alphabetical order. A property is listed once, in the first group that has it.
- A property with one type of value takes that type. A property with several takes a `SchemaOrg.Range` enum with a case for each. A range with Text can be written as a string literal, with Integer or Number as an integer literal, and with Number as a floating-point literal.
- Data types are Swift values: Text, CssSelectorType, XPathType, PronounceableText, Quantity, Distance, Energy and Mass are `String`; URL is `RFC_3986.URI`; Boolean is `Bool`; Number and Float are `Double`; Integer is `Int`; Date is `ISO_8601.CalendarDate`; DateTime is `ISO_8601.DateTime`; Time is `ISO_8601.Time`; Duration is `ISO_8601.Duration`; DataType is a `W3C_JSON_LD.Value`.
- A `Double` with no fractional part is written as an integer. A Boolean also reads from schema.org's `True` and `False`, and Integer, Number and Float also read from a string that holds a number.
- Each enumeration is an enum with a case for each of its members, one for each enumeration below it, and `instance` for a described value of the enumeration's own type. A member is written as its full `https://schema.org/` IRI. It reads from that IRI, from `http://schema.org/`, from a `schema:` name, from a bare name and from a node holding only that `@id`.
- A described value reads as the most specific case it fits: an enumeration below this one, then `instance`. Properties of an enumeration type are set on its `Instance`.
- A range reads the first case a value fits, in this order: enumerations, then types from the most specific, then Boolean, Integer, Number, Float, Date, DateTime, Time, Duration and URL, then text. A node without `@type` fits any type, and a string that holds a number fits Number before Text.
- A property reads its first value that fits its range, and reads nil when none does. Values that do not fit stay in the node. Setting a property replaces every value it had, and setting nil removes it. A key reads every value that fits and sets all of them.
- A value of a type is written as a node of that type, with the properties in the order they were set, inside a document with the context `https://schema.org`.
- A value of a type reads from a node whose `@type` is that type or one below it, or from a node without `@type`.
- Reading a document expands it with `SchemaOrg.loader`, which knows schema.org's context by its IRIs and maps it to the `http://schema.org/` vocabulary, as schema.org's own context does, with `id` and `type` as aliases. It then writes `http://schema.org/` IRIs as `https://schema.org/` and gives schema.org properties and types their plain names. Other IRIs stay as they are.
- `SchemaOrg.Range.OperatingSystem.macOS` and the other platforms are their names as text. `SchemaOrg.Range.Offers.free` is an Offer with a price of 0.
- Properties whose domain is only a data type, or that have no domain, have no accessor: `interactionCount`, `phoneticText`, `speechToTextMarkup` and `textValue`. Their values stay in the node.
