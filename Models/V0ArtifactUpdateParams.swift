//
// V0ArtifactUpdateParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0ArtifactUpdateParams: Codable, Hashable {

    public var isPublicPageEnabled: Bool

    public init(isPublicPageEnabled: Bool) {
        self.isPublicPageEnabled = isPublicPageEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isPublicPageEnabled = "is_public_page_enabled"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(isPublicPageEnabled, forKey: .isPublicPageEnabled)
    }
}
