//
// V0ProjectFileStorageResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0ProjectFileStorageResponseModel: Codable, Hashable {

    public var data: V0ProjectFileStorageResponseItemModel?

    public init(data: V0ProjectFileStorageResponseItemModel? = nil) {
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