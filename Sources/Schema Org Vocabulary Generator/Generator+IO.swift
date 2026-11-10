import RFC_8259

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

extension Generator {

    static func open(_ path: Swift.String, mode: Swift.String) throws(Generator.Error) -> UnsafeMutablePointer<FILE> {
        #if os(Windows)
            var file: UnsafeMutablePointer<FILE>?
            guard unsafe fopen_s(&file, path, mode) == 0, let file = unsafe file else { throw .open(path) }
            return unsafe file
        #else
            guard let file = unsafe fopen(path, mode) else { throw .open(path) }
            return unsafe file
        #endif
    }

    static func read(_ path: Swift.String) throws(Generator.Error) -> [Byte] {
        let file = try unsafe open(path, mode: "rb")
        defer { _ = unsafe fclose(file) }
        var bytes: [Byte] = []
        var buffer = [Swift.UInt8](repeating: 0, count: 65_536)
        while true {
            let count = buffer.withUnsafeMutableBytes { unsafe fread($0.baseAddress, 1, $0.count, file) }
            bytes.append(contentsOf: buffer.prefix(count).map(Byte.init(bitPattern:)))
            guard count == buffer.count else { break }
        }
        guard unsafe ferror(file) == 0 else { throw .read(path) }
        return bytes
    }

    static func write(_ text: Swift.String, to path: Swift.String) throws(Generator.Error) {
        let file = try unsafe open(path, mode: "wb")
        let bytes = Swift.Array(text.utf8)
        let written = bytes.withUnsafeBytes { unsafe fwrite($0.baseAddress, 1, $0.count, file) }
        guard unsafe fclose(file) == 0, written == bytes.count else { throw .write(path) }
    }

    static func run(_ arguments: [Swift.String]) throws(Generator.Error) {
        guard arguments.count == 3 else { throw .usage }
        let bytes = try read(arguments[1])
        let vocabulary: Vocabulary
        do {
            vocabulary = try Vocabulary(json: bytes)
        } catch {
            throw .vocabulary(error)
        }
        for file in Generator(vocabulary: vocabulary).files {
            try write(file.text, to: arguments[2] + "/" + file.name)
        }
    }
}
