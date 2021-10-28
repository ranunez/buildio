//
// V0OwnerAddOnResponseItemModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0OwnerAddOnResponseItemModel: Codable, Hashable {

    public var apps: [V0AddOnAppResponseItemModel]?
    public var documentationUrl: String?
    public var hasUi: Bool?
    public var icon: String?
    public var id: String?
    public var isBeta: Bool?
    public var summary: String?
    public var title: String?

    public init(apps: [V0AddOnAppResponseItemModel]? = nil, documentationUrl: String? = nil, hasUi: Bool? = nil, icon: String? = nil, id: String? = nil, isBeta: Bool? = nil, summary: String? = nil, title: String? = nil) {
        self.apps = apps
        self.documentationUrl = documentationUrl
        self.hasUi = hasUi
        self.icon = icon
        self.id = id
        self.isBeta = isBeta
        self.summary = summary
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case apps
        case documentationUrl = "documentation_url"
        case hasUi = "has_ui"
        case icon
        case id
        case isBeta = "is_beta"
        case summary
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(apps, forKey: .apps)
        try container.encodeIfPresent(documentationUrl, forKey: .documentationUrl)
        try container.encodeIfPresent(hasUi, forKey: .hasUi)
        try container.encodeIfPresent(icon, forKey: .icon)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(isBeta, forKey: .isBeta)
        try container.encodeIfPresent(summary, forKey: .summary)
        try container.encodeIfPresent(title, forKey: .title)
    }
}
