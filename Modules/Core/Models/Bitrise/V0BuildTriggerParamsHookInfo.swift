//
// V0BuildTriggerParamsHookInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0BuildTriggerParamsHookInfo: Codable {

    /** Should be \"bitrise\" */
    public let type: String?

    public init(type: String = "bitrise") {
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
    }
}