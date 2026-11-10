#if canImport(Darwin)
    import Darwin
#elseif canImport(Glibc)
    import Glibc
#elseif canImport(Musl)
    import Musl
#elseif canImport(Android)
    import Android
#elseif canImport(WASILibc)
    import WASILibc
#elseif canImport(ucrt)
    import ucrt
#endif

do {
    try Generator.run(CommandLine.arguments)
} catch {
    print("Schema Org Vocabulary Generator: \(error)")
    exit(1)
}
