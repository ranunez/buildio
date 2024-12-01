//
// V0BuildCertificateListResponseModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0BuildCertificateListResponseModel: Codable {

    public let data: [V0BuildCertificateResponseItemModel]?
    public let paging: V0PagingResponseModel?

    public init(data: [V0BuildCertificateResponseItemModel]? = nil, paging: V0PagingResponseModel? = nil) {
        self.data = data
        self.paging = paging
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case paging
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(paging, forKey: .paging)
    }
}