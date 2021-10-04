//
// AppSetupAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import Models


open class AppSetupAPI {
    /**
     Upload a new bitrise.yml for your application.

     - parameter body: (body) App config parameters 
     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appConfigCreate(body: V0AppConfigRequestParam, appSlug: String, completion: @escaping ((_ data: V0AppConfigRespModel?,_ error: Error?) -> Void)) {
        appConfigCreateWithRequestBuilder(body: body, appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Upload a new bitrise.yml for your application.
     - POST /apps/{app-slug}/bitrise.yml

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "key" : ""
}}]
     - parameter body: (body) App config parameters 
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0AppConfigRespModel> 
     */
    open class func appConfigCreateWithRequestBuilder(body: V0AppConfigRequestParam, appSlug: String) -> RequestBuilder<V0AppConfigRespModel> {
        var path = "/apps/{app-slug}/bitrise.yml"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0AppConfigRespModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Add a new app

     - parameter body: (body) App parameters 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appCreate(body: V0AppUploadParams, completion: @escaping ((_ data: V0AppRespModel?,_ error: Error?) -> Void)) {
        appCreateWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add a new app
     - POST /apps/register

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "slug" : "slug",
  "status" : "status"
}}]
     - parameter body: (body) App parameters 

     - returns: RequestBuilder<V0AppRespModel> 
     */
    open class func appCreateWithRequestBuilder(body: V0AppUploadParams) -> RequestBuilder<V0AppRespModel> {
        let path = "/apps/register"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0AppRespModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Save the application at the end of the app registration process

     - parameter body: (body) App finish parameters 
     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appFinish(body: V0AppFinishParams, appSlug: String, completion: @escaping ((_ data: V0AppFinishRespModel?,_ error: Error?) -> Void)) {
        appFinishWithRequestBuilder(body: body, appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Save the application at the end of the app registration process
     - POST /apps/{app-slug}/finish

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "branch_name" : "branch_name",
  "is_webhook_auto_reg_supported" : true,
  "build_trigger_token" : "build_trigger_token",
  "status" : "status"
}}]
     - parameter body: (body) App finish parameters 
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0AppFinishRespModel> 
     */
    open class func appFinishWithRequestBuilder(body: V0AppFinishParams, appSlug: String) -> RequestBuilder<V0AppFinishRespModel> {
        var path = "/apps/{app-slug}/finish"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0AppFinishRespModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Register an incoming webhook for a specific application

     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func appWebhookCreate(appSlug: String, completion: @escaping ((_ data: V0WebhookRespModel?,_ error: Error?) -> Void)) {
        appWebhookCreateWithRequestBuilder(appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Register an incoming webhook for a specific application
     - POST /apps/{app-slug}/register-webhook

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "status" : "status"
}}]
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0WebhookRespModel> 
     */
    open class func appWebhookCreateWithRequestBuilder(appSlug: String) -> RequestBuilder<V0WebhookRespModel> {
        var path = "/apps/{app-slug}/register-webhook"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0WebhookRespModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Add an SSH-key to a specific app

     - parameter body: (body) SSH key parameters 
     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sshKeyCreate(body: V0SSHKeyUploadParams, appSlug: String, completion: @escaping ((_ data: V0SSHKeyRespModel?,_ error: Error?) -> Void)) {
        sshKeyCreateWithRequestBuilder(body: body, appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Add an SSH-key to a specific app
     - POST /apps/{app-slug}/register-ssh-key

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "status" : "status"
}}]
     - parameter body: (body) SSH key parameters 
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0SSHKeyRespModel> 
     */
    open class func sshKeyCreateWithRequestBuilder(body: V0SSHKeyUploadParams, appSlug: String) -> RequestBuilder<V0SSHKeyRespModel> {
        var path = "/apps/{app-slug}/register-ssh-key"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0SSHKeyRespModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
