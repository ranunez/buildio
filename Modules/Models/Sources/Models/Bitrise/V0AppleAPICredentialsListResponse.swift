//
// V0AppleAPICredentialsListResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0AppleAPICredentialsListResponse: Codable, Hashable {

    public var data: [V0AppleAPICredentialResponseItem]?

    public init(data: [V0AppleAPICredentialResponseItem]? = nil) {
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
    }
}