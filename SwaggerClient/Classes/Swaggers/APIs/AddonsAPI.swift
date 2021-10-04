//
// AddonsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import Models


open class AddonsAPI {
    /**
     Get list of the addons for apps

     - parameter appSlug: (path) App slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addonListByApp(appSlug: String, completion: @escaping ((_ data: V0AppAddOnsListResponseModel?,_ error: Error?) -> Void)) {
        addonListByAppWithRequestBuilder(appSlug: appSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of the addons for apps
     - GET /apps/{app-slug}/addons

     - API Key:
       - type: apiKey Bitrise-Addon-Auth-Token 
       - name: AddonAuthToken
     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "setup_guide" : {
      "instructions" : [ {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      }, {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      } ],
      "notification" : "notification"
    },
    "summary" : "summary",
    "icon" : "icon",
    "description" : "description",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "is_enabled" : true,
    "is_beta" : true,
    "login_url" : "login_url",
    "terms_url" : "terms_url",
    "id" : "id",
    "scopes" : [ "scopes", "scopes" ],
    "has_ui" : true,
    "plan" : {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    }
  }, {
    "setup_guide" : {
      "instructions" : [ {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      }, {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      } ],
      "notification" : "notification"
    },
    "summary" : "summary",
    "icon" : "icon",
    "description" : "description",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "is_enabled" : true,
    "is_beta" : true,
    "login_url" : "login_url",
    "terms_url" : "terms_url",
    "id" : "id",
    "scopes" : [ "scopes", "scopes" ],
    "has_ui" : true,
    "plan" : {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    }
  } ]
}}]
     - parameter appSlug: (path) App slug 

     - returns: RequestBuilder<V0AppAddOnsListResponseModel> 
     */
    open class func addonListByAppWithRequestBuilder(appSlug: String) -> RequestBuilder<V0AppAddOnsListResponseModel> {
        var path = "/apps/{app-slug}/addons"
        let appSlugPreEscape = "\(appSlug)"
        let appSlugPostEscape = appSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{app-slug}", with: appSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0AppAddOnsListResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get list of the addons for organization

     - parameter organizationSlug: (path) Organization slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addonListByOrganization(organizationSlug: String, completion: @escaping ((_ data: V0OwnerAddOnsListResponseModel?,_ error: Error?) -> Void)) {
        addonListByOrganizationWithRequestBuilder(organizationSlug: organizationSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of the addons for organization
     - GET /organizations/{organization-slug}/addons

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "summary" : "summary",
    "is_beta" : true,
    "icon" : "icon",
    "id" : "id",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "has_ui" : true,
    "apps" : [ {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    }, {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    } ]
  }, {
    "summary" : "summary",
    "is_beta" : true,
    "icon" : "icon",
    "id" : "id",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "has_ui" : true,
    "apps" : [ {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    }, {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    } ]
  } ]
}}]
     - parameter organizationSlug: (path) Organization slug 

     - returns: RequestBuilder<V0OwnerAddOnsListResponseModel> 
     */
    open class func addonListByOrganizationWithRequestBuilder(organizationSlug: String) -> RequestBuilder<V0OwnerAddOnsListResponseModel> {
        var path = "/organizations/{organization-slug}/addons"
        let organizationSlugPreEscape = "\(organizationSlug)"
        let organizationSlugPostEscape = organizationSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{organization-slug}", with: organizationSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0OwnerAddOnsListResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get list of the addons for user

     - parameter userSlug: (path) User slug 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addonListByUser(userSlug: String, completion: @escaping ((_ data: V0OwnerAddOnsListResponseModel?,_ error: Error?) -> Void)) {
        addonListByUserWithRequestBuilder(userSlug: userSlug).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of the addons for user
     - GET /users/{user-slug}/addons

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "summary" : "summary",
    "is_beta" : true,
    "icon" : "icon",
    "id" : "id",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "has_ui" : true,
    "apps" : [ {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    }, {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    } ]
  }, {
    "summary" : "summary",
    "is_beta" : true,
    "icon" : "icon",
    "id" : "id",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "has_ui" : true,
    "apps" : [ {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    }, {
      "plan_started_at" : "plan_started_at",
      "icon" : {
        "valid" : true,
        "string" : "string"
      },
      "title" : "title",
      "plan" : {
        "features" : [ {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        }, {
          "quantity" : "quantity",
          "available" : true,
          "description" : "description"
        } ],
        "price" : 0,
        "name" : "name",
        "id" : "id"
      },
      "slug" : "slug"
    } ]
  } ]
}}]
     - parameter userSlug: (path) User slug 

     - returns: RequestBuilder<V0OwnerAddOnsListResponseModel> 
     */
    open class func addonListByUserWithRequestBuilder(userSlug: String) -> RequestBuilder<V0OwnerAddOnsListResponseModel> {
        var path = "/users/{user-slug}/addons"
        let userSlugPreEscape = "\(userSlug)"
        let userSlugPostEscape = userSlugPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{user-slug}", with: userSlugPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0OwnerAddOnsListResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get list of available Bitrise addons

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addonsList(completion: @escaping ((_ data: V0AddonsListResponseModel?,_ error: Error?) -> Void)) {
        addonsListWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get list of available Bitrise addons
     - GET /addons

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : [ {
    "setup_guide" : {
      "instructions" : [ {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      }, {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      } ],
      "notification" : "notification"
    },
    "summary" : "summary",
    "icon" : "icon",
    "description" : "description",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "card_header_colors" : [ "card_header_colors", "card_header_colors" ],
    "platforms" : [ "platforms", "platforms" ],
    "is_beta" : true,
    "developer_links" : [ {
      "title" : "title",
      "url" : "url"
    }, {
      "title" : "title",
      "url" : "url"
    } ],
    "plans" : [ {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    }, {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    } ],
    "subtitle" : "subtitle",
    "preview_images" : [ "preview_images", "preview_images" ],
    "banner_image" : "banner_image",
    "categories" : [ "categories", "categories" ],
    "id" : "id",
    "has_ui" : true
  }, {
    "setup_guide" : {
      "instructions" : [ {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      }, {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      } ],
      "notification" : "notification"
    },
    "summary" : "summary",
    "icon" : "icon",
    "description" : "description",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "card_header_colors" : [ "card_header_colors", "card_header_colors" ],
    "platforms" : [ "platforms", "platforms" ],
    "is_beta" : true,
    "developer_links" : [ {
      "title" : "title",
      "url" : "url"
    }, {
      "title" : "title",
      "url" : "url"
    } ],
    "plans" : [ {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    }, {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    } ],
    "subtitle" : "subtitle",
    "preview_images" : [ "preview_images", "preview_images" ],
    "banner_image" : "banner_image",
    "categories" : [ "categories", "categories" ],
    "id" : "id",
    "has_ui" : true
  } ]
}}]

     - returns: RequestBuilder<V0AddonsListResponseModel> 
     */
    open class func addonsListWithRequestBuilder() -> RequestBuilder<V0AddonsListResponseModel> {
        let path = "/addons"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0AddonsListResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Get a specific Bitrise addon

     - parameter addonId: (path) Addon ID 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addonsShow(addonId: String, completion: @escaping ((_ data: V0AddonsShowResponseModel?,_ error: Error?) -> Void)) {
        addonsShowWithRequestBuilder(addonId: addonId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get a specific Bitrise addon
     - GET /addons/{addon-id}

     - API Key:
       - type: apiKey Authorization 
       - name: PersonalAccessToken
     - examples: [{contentType=application/json, example={
  "data" : {
    "setup_guide" : {
      "instructions" : [ {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      }, {
        "description" : "description",
        "card_content" : "card_content",
        "type" : "type"
      } ],
      "notification" : "notification"
    },
    "summary" : "summary",
    "icon" : "icon",
    "description" : "description",
    "documentation_url" : "documentation_url",
    "title" : "title",
    "card_header_colors" : [ "card_header_colors", "card_header_colors" ],
    "platforms" : [ "platforms", "platforms" ],
    "is_beta" : true,
    "developer_links" : [ {
      "title" : "title",
      "url" : "url"
    }, {
      "title" : "title",
      "url" : "url"
    } ],
    "plans" : [ {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    }, {
      "features" : [ {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      }, {
        "quantity" : "quantity",
        "available" : true,
        "description" : "description"
      } ],
      "price" : 0,
      "name" : "name",
      "id" : "id"
    } ],
    "subtitle" : "subtitle",
    "preview_images" : [ "preview_images", "preview_images" ],
    "banner_image" : "banner_image",
    "categories" : [ "categories", "categories" ],
    "id" : "id",
    "has_ui" : true
  }
}}]
     - parameter addonId: (path) Addon ID 

     - returns: RequestBuilder<V0AddonsShowResponseModel> 
     */
    open class func addonsShowWithRequestBuilder(addonId: String) -> RequestBuilder<V0AddonsShowResponseModel> {
        var path = "/addons/{addon-id}"
        let addonIdPreEscape = "\(addonId)"
        let addonIdPostEscape = addonIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{addon-id}", with: addonIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<V0AddonsShowResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}
