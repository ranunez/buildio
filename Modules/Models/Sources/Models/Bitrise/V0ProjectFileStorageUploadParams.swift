//
// V0ProjectFileStorageUploadParams.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct V0ProjectFileStorageUploadParams: Codable {

    public var uploadFileName: String
    public var uploadFileSize: Int
    public var userEnvKey: String

    public init(uploadFileName: String, uploadFileSize: Int, userEnvKey: String) {
        self.uploadFileName = uploadFileName
        self.uploadFileSize = uploadFileSize
        self.userEnvKey = userEnvKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uploadFileName = "upload_file_name"
        case uploadFileSize = "upload_file_size"
        case userEnvKey = "user_env_key"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(uploadFileName, forKey: .uploadFileName)
        try container.encode(uploadFileSize, forKey: .uploadFileSize)
        try container.encode(userEnvKey, forKey: .userEnvKey)
    }
}
