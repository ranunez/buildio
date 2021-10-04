//
// BuildCertificateAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import Models

open class BuildCertificateAPI {
    /**
     Confirm a build certificate upload

     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateConfirm(appSlug: String, buildCertificateSlug: String, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateConfirmWithRequestBuilder(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Confirm a build certificate upload
     - POST /apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "certificate_password" : "certificate_password",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 

     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateConfirmWithRequestBuilder(appSlug: String, buildCertificateSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}/uploaded"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(buildCertificateSlug)"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Create a build certificate

     - parameter body: (body) Build certificate parameters such as file name and its file size 
     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateCreate(body: V0BuildCertificateUploadParams, appSlug: String, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateCreateWithRequestBuilder(body: body, appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a build certificate
     - POST /apps/{app-slug}/build-certificates

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "certificate_password" : "certificate_password",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter body: (body) Build certificate parameters such as file name and its file size 
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateCreateWithRequestBuilder(body: V0BuildCertificateUploadParams, appSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Delete a build certificate

     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateDelete(appSlug: String, buildCertificateSlug: String, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateDeleteWithRequestBuilder(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete a build certificate
     - DELETE /apps/{app-slug}/build-certificates/{build-certificate-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "certificate_password" : "certificate_password",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 

     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateDeleteWithRequestBuilder(appSlug: String, buildCertificateSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(buildCertificateSlug)"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get a list of the build certificates

     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first build certificate in the response (optional)
     - parameter limit: (query) Max number of build certificates per page is 50. (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateList(appSlug: String, next: String? = nil, limit: Int? = nil, completion: @escaping ((_ data: V0BuildCertificateListResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateListWithRequestBuilder(appSlug: appSlug, next: next, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a list of the build certificates
     - GET /apps/{app-slug}/build-certificates

     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "certificate_password" : "certificate_password",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }, {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "certificate_password" : "certificate_password",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  } ],
  "paging" : {
    "next" : "next",
    "page_item_limit" : 6,
    "total_item_count" : 1
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter next: (query) Slug of the first build certificate in the response (optional)
     - parameter limit: (query) Max number of build certificates per page is 50. (optional)

     - returns: RequestBuilder<V0BuildCertificateListResponseModel> 
     */
    open class func buildCertificateListWithRequestBuilder(appSlug: String, next: String? = nil, limit: Int? = nil) -> RequestBuilder<V0BuildCertificateListResponseModel> {
        var path = "/apps/{app-slug}/build-certificates"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "next": next, 
                        "limit": limit?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<V0BuildCertificateListResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get a specific build certificate

     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateShow(appSlug: String, buildCertificateSlug: String, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateShowWithRequestBuilder(appSlug: appSlug, buildCertificateSlug: buildCertificateSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a specific build certificate
     - GET /apps/{app-slug}/build-certificates/{build-certificate-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "certificate_password" : "certificate_password",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 

     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateShowWithRequestBuilder(appSlug: String, buildCertificateSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(buildCertificateSlug)"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Update a build certificate

     - parameter body: (body) Build certificate parameters 
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func buildCertificateUpdate(body: V0BuildCertificateUpdateParams, appSlug: String, buildCertificateSlug: String, completion: @escaping ((_ data: V0BuildCertificateResponseModel?,_ error: Error?) -> Void)) {
        buildCertificateUpdateWithRequestBuilder(body: body, appSlug: appSlug, buildCertificateSlug: buildCertificateSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update a build certificate
     - PATCH /apps/{app-slug}/build-certificates/{build-certificate-slug}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "processed" : true,
    "download_url" : "download_url",
    "is_expose" : true,
    "upload_file_name" : "upload_file_name",
    "certificate_password" : "certificate_password",
    "upload_url" : "upload_url",
    "upload_file_size" : 0,
    "is_protected" : true,
    "slug" : "slug"
  }
}}]
     - parameter body: (body) Build certificate parameters 
     - parameter appSlug: (path) App slug 
     - parameter buildCertificateSlug: (path) Build certificate slug 

     - returns: RequestBuilder<V0BuildCertificateResponseModel> 
     */
    open class func buildCertificateUpdateWithRequestBuilder(body: V0BuildCertificateUpdateParams, appSlug: String, buildCertificateSlug: String) -> RequestBuilder<V0BuildCertificateResponseModel> {
        var path = "/apps/{app-slug}/build-certificates/{build-certificate-slug}"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let buildCertificateSlugPreEscape = "\(buildCertificateSlug)"
        let buildCertificateSlugPostEscape = buildCertificateSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{build-certificate-slug}", with: buildCertificateSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0BuildCertificateResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
