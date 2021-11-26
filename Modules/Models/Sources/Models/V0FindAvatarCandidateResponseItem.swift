//
// V0FindAvatarCandidateResponseItem.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0FindAvatarCandidateResponseItem: Codable, Hashable {

    public var downloadUrl: String?
    public var filename: String?
    public var slug: String?

    public init(downloadUrl: String? = nil, filename: String? = nil, slug: String? = nil) {
        self.downloadUrl = downloadUrl
        self.filename = filename
        self.slug = slug
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case downloadUrl = "download_url"
        case filename
        case slug
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(downloadUrl, forKey: .downloadUrl)
        try container.encodeIfPresent(filename, forKey: .filename)
        try container.encodeIfPresent(slug, forKey: .slug)
    }
}