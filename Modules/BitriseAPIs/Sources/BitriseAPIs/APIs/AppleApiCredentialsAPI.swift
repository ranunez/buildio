//
// AppleApiCredentialsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
import Models

public final class AppleApiCredentialsAPI: BaseAPI {

    /**
     List Apple API credentials for a specific user
     
     - parameter userSlug: (path) User slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: V0AppleAPICredentialsListResponse
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    public func appleApiCredentialList(userSlug: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue) async throws -> V0AppleAPICredentialsListResponse {
        var requestTask: RequestTask?
        return try await withTaskCancellationHandler {
            try Task.checkCancellation()
            return try await withCheckedThrowingContinuation { continuation in
                guard !Task.isCancelled else {
                  continuation.resume(throwing: CancellationError())
                  return
                }

                requestTask = appleApiCredentialListWithRequestBuilder(userSlug: userSlug).execute(apiResponseQueue) { result in
                    switch result {
                    case let .success(response):
                        continuation.resume(returning: response.body)
                    case let .failure(error):
                        continuation.resume(throwing: error)
                    }
                }
            }
        } onCancel: { [requestTask] in
            requestTask?.cancel()
        }
    }

    /**
     List Apple API credentials for a specific user
     - GET /users/{user-slug}/apple-api-credentials
     - List Apple API credentials for a specific Bitrise user
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - parameter userSlug: (path) User slug 
     - returns: RequestBuilder<V0AppleAPICredentialsListResponse> 
     */
    private func appleApiCredentialListWithRequestBuilder(userSlug: String) -> RequestBuilder<V0AppleAPICredentialsListResponse> {
        var localVariablePath = "/users/{user-slug}/apple-api-credentials"
        let userSlugPreEscape = "\(APIHelper.mapValueToPathItem(userSlug))"
        let userSlugPostEscape = userSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user-slug}", with: userSlugPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = authorizationHeaders()

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<V0AppleAPICredentialsListResponse>.Type = requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
