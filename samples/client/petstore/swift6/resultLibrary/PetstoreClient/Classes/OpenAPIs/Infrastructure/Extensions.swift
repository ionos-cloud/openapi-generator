// Extensions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

extension QueryStringEncodable {
    @_disfavoredOverload
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension Bool: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension Float: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension Int: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension Int32: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension Int64: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension Double: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension Decimal: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension String: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension URL: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension UUID: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: self) }
}

extension RawRepresentable where RawValue: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String { String(describing: rawValue) }
}

private func encodeIfPossible<T>(_ object: T, codableHelper: CodableHelper) -> String {
    if let encodableObject = object as? QueryStringEncodable {
        return encodableObject.encodeToQueryString(codableHelper: codableHelper)
    } else {
        return String(describing: object)
    }
}

extension Array {
    func encodeToQueryString(codableHelper: CodableHelper) -> [String] {
        return self.map { encodeIfPossible($0, codableHelper: codableHelper) }
    }
}

extension Set {
    func encodeToQueryString(codableHelper: CodableHelper) -> [String] {
        return Array(self).encodeToQueryString(codableHelper: codableHelper)
    }
}

extension Dictionary {
    func encodeToQueryString(codableHelper: CodableHelper) -> [Key: String] {
        var dictionary = [Key: String]()
        for (key, value) in self {
            dictionary[key] = encodeIfPossible(value, codableHelper: codableHelper)
        }
        return dictionary
    }
}

extension Data: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String {
        return self.base64EncodedString(options: Data.Base64EncodingOptions())
    }
}

extension Date: QueryStringEncodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String {
        return codableHelper.dateFormatter.string(from: self)
    }
}

extension QueryStringEncodable where Self: Encodable {
    func encodeToQueryString(codableHelper: CodableHelper) -> String {
        guard let data = try? codableHelper.jsonEncoder.encode(self) else {
            fatalError("Could not encode to json: \(self)")
        }
        return data.encodeToQueryString(codableHelper: codableHelper)
    }
}

extension String: @retroactive CodingKey {

    public var stringValue: String {
        return self
    }

    public init?(stringValue: String) {
        self.init(stringLiteral: stringValue)
    }

    public var intValue: Int? {
        return nil
    }

    public init?(intValue: Int) {
        return nil
    }

}

extension KeyedEncodingContainerProtocol {

    internal mutating func encodeArray<T>(_ values: [T], forKey key: Self.Key) throws where T: Encodable {
        var arrayContainer = nestedUnkeyedContainer(forKey: key)
        try arrayContainer.encode(contentsOf: values)
    }

    internal mutating func encodeArrayIfPresent<T>(_ values: [T]?, forKey key: Self.Key) throws where T: Encodable {
        if let values = values {
            try encodeArray(values, forKey: key)
        }
    }

    internal mutating func encodeMap<T>(_ pairs: [Self.Key: T]) throws where T: Encodable {
        for (key, value) in pairs {
            try encode(value, forKey: key)
        }
    }

    internal mutating func encodeMapIfPresent<T>(_ pairs: [Self.Key: T]?) throws where T: Encodable {
        if let pairs = pairs {
            try encodeMap(pairs)
        }
    }

    internal mutating func encode(_ value: Decimal, forKey key: Self.Key) throws {
        let decimalNumber = NSDecimalNumber(decimal: value)
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.locale = Locale(identifier: "en_US")
        let formattedString = numberFormatter.string(from: decimalNumber) ?? "\(value)"
        try encode(formattedString, forKey: key)
    }

    internal mutating func encodeIfPresent(_ value: Decimal?, forKey key: Self.Key) throws {
        if let value = value {
            try encode(value, forKey: key)
        }
    }
}

extension KeyedDecodingContainerProtocol {

    internal func decodeArray<T>(_ type: T.Type, forKey key: Self.Key) throws -> [T] where T: Decodable {
        var tmpArray = [T]()

        var nestedContainer = try nestedUnkeyedContainer(forKey: key)
        while !nestedContainer.isAtEnd {
            let arrayValue = try nestedContainer.decode(T.self)
            tmpArray.append(arrayValue)
        }

        return tmpArray
    }

    internal func decodeArrayIfPresent<T>(_ type: T.Type, forKey key: Self.Key) throws -> [T]? where T: Decodable {
        var tmpArray: [T]?

        if contains(key) {
            tmpArray = try decodeArray(T.self, forKey: key)
        }

        return tmpArray
    }

    internal func decodeMap<T>(_ type: T.Type, excludedKeys: Set<Self.Key>) throws -> [Self.Key: T] where T: Decodable {
        var map: [Self.Key: T] = [:]

        for key in allKeys {
            if !excludedKeys.contains(key) {
                let value = try decode(T.self, forKey: key)
                map[key] = value
            }
        }

        return map
    }

    internal func decode(_ type: Decimal.Type, forKey key: Self.Key) throws -> Decimal {
        let stringValue = try decode(String.self, forKey: key)
        guard let decimalValue = Decimal(string: stringValue) else {
            let context = DecodingError.Context(codingPath: [key], debugDescription: "The key \(key) couldn't be converted to a Decimal value")
            throw DecodingError.typeMismatch(type, context)
        }

        return decimalValue
    }

    internal func decodeIfPresent(_ type: Decimal.Type, forKey key: Self.Key) throws -> Decimal? {
        guard let stringValue = try decodeIfPresent(String.self, forKey: key) else {
            return nil
        }
        guard let decimalValue = Decimal(string: stringValue) else {
            let context = DecodingError.Context(codingPath: [key], debugDescription: "The key \(key) couldn't be converted to a Decimal value")
            throw DecodingError.typeMismatch(type, context)
        }

        return decimalValue
    }

}
