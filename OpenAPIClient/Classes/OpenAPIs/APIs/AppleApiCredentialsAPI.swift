//
// AppleApiCredentialsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Models

open class AppleApiCredentialsAPI {

    /**
     List Apple API credentials for a specific user
     
     - parameter userSlug: (path) User slug 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appleApiCredentialList(userSlug: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: V0AppleAPICredentialsListResponse?, _ error: Error?) -> Void)) {
        appleApiCredentialListWithRequestBuilder(userSlug: userSlug).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
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
    open class func appleApiCredentialListWithRequestBuilder(userSlug: String) -> RequestBuilder<V0AppleAPICredentialsListResponse> {
        var localVariablePath = "/users/{user-slug}/apple-api-credentials"
        let userSlugPreEscape = "\(APIHelper.mapValueToPathItem(userSlug))"
        let userSlugPostEscape = userSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{user-slug}", with: userSlugPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<V0AppleAPICredentialsListResponse>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}