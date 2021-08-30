# \ZoneApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiDnsZoneDelete**](ZoneApi.md#ApiDnsZoneDelete) | **Delete** /api/dns/Zone | Deletes a DNS zone from the passed provider
[**ApiDnsZoneGet**](ZoneApi.md#ApiDnsZoneGet) | **Get** /api/dns/Zone | Retrieves the DNS zones assigned to the account
[**ApiDnsZonePost**](ZoneApi.md#ApiDnsZonePost) | **Post** /api/dns/Zone | Creates a new DNS zone
[**ApiDnsZoneZoneGet**](ZoneApi.md#ApiDnsZoneZoneGet) | **Get** /api/dns/Zone/{zone} | Loads the specified DNS zone



## ApiDnsZoneDelete

> ApiDnsZoneDelete(ctx).Name(name).XApiOptions(xApiOptions).Execute()

Deletes a DNS zone from the passed provider

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    name := "name_example" // string | Name of the DNS zone to delete.
    xApiOptions := "xApiOptions_example" // string | Data used to access the API <br /><br />  Schema: <br />  { <br />  \"access_options\": { <br />  \"provider\": \"provider\", <br />  \"environment\": \"environment\", <br />  \"credentials_id\": \"00000000-0000-0000-0000-000000000000\" <br />  }, <br />  \"meta\": { <br />  \"additionalKey\": \"keyValue\" <br />  } <br />  }

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ZoneApi.ApiDnsZoneDelete(context.Background()).Name(name).XApiOptions(xApiOptions).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `ZoneApi.ApiDnsZoneDelete``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDnsZoneDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **string** | Name of the DNS zone to delete. | 
 **xApiOptions** | **string** | Data used to access the API &lt;br /&gt;&lt;br /&gt;  Schema: &lt;br /&gt;  { &lt;br /&gt;  \&quot;access_options\&quot;: { &lt;br /&gt;  \&quot;provider\&quot;: \&quot;provider\&quot;, &lt;br /&gt;  \&quot;environment\&quot;: \&quot;environment\&quot;, &lt;br /&gt;  \&quot;credentials_id\&quot;: \&quot;00000000-0000-0000-0000-000000000000\&quot; &lt;br /&gt;  }, &lt;br /&gt;  \&quot;meta\&quot;: { &lt;br /&gt;  \&quot;additionalKey\&quot;: \&quot;keyValue\&quot; &lt;br /&gt;  } &lt;br /&gt;  } | 

### Return type

 (empty response body)

### Authorization

[oidc](../README.md#oidc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiDnsZoneGet

> []Zone ApiDnsZoneGet(ctx).XApiOptions(xApiOptions).Execute()

Retrieves the DNS zones assigned to the account

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    xApiOptions := "xApiOptions_example" // string | Data used to access the API <br /><br />  Schema: <br />  { <br />  \"access_options\": { <br />  \"provider\": \"provider\", <br />  \"environment\": \"environment\", <br />  \"credentials_id\": \"00000000-0000-0000-0000-000000000000\" <br />  }, <br />  \"meta\": { <br />  \"additionalKey\": \"keyValue\" <br />  } <br />  }

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ZoneApi.ApiDnsZoneGet(context.Background()).XApiOptions(xApiOptions).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `ZoneApi.ApiDnsZoneGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ApiDnsZoneGet`: []Zone
    fmt.Fprintf(os.Stdout, "Response from `ZoneApi.ApiDnsZoneGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDnsZoneGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiOptions** | **string** | Data used to access the API &lt;br /&gt;&lt;br /&gt;  Schema: &lt;br /&gt;  { &lt;br /&gt;  \&quot;access_options\&quot;: { &lt;br /&gt;  \&quot;provider\&quot;: \&quot;provider\&quot;, &lt;br /&gt;  \&quot;environment\&quot;: \&quot;environment\&quot;, &lt;br /&gt;  \&quot;credentials_id\&quot;: \&quot;00000000-0000-0000-0000-000000000000\&quot; &lt;br /&gt;  }, &lt;br /&gt;  \&quot;meta\&quot;: { &lt;br /&gt;  \&quot;additionalKey\&quot;: \&quot;keyValue\&quot; &lt;br /&gt;  } &lt;br /&gt;  } | 

### Return type

[**[]Zone**](Zone.md)

### Authorization

[oidc](../README.md#oidc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiDnsZonePost

> Zone ApiDnsZonePost(ctx).XApiOptions(xApiOptions).CreateZoneRequestModel(createZoneRequestModel).Execute()

Creates a new DNS zone

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    xApiOptions := "xApiOptions_example" // string | Data used to access the API <br /><br />  Schema: <br />  { <br />  \"access_options\": { <br />  \"provider\": \"provider\", <br />  \"environment\": \"environment\", <br />  \"credentials_id\": \"00000000-0000-0000-0000-000000000000\" <br />  }, <br />  \"meta\": { <br />  \"additionalKey\": \"keyValue\" <br />  } <br />  }
    createZoneRequestModel := *openapiclient.NewCreateZoneRequestModel("Name_example") // CreateZoneRequestModel | Data used to create a DNS zone

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ZoneApi.ApiDnsZonePost(context.Background()).XApiOptions(xApiOptions).CreateZoneRequestModel(createZoneRequestModel).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `ZoneApi.ApiDnsZonePost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ApiDnsZonePost`: Zone
    fmt.Fprintf(os.Stdout, "Response from `ZoneApi.ApiDnsZonePost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDnsZonePostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiOptions** | **string** | Data used to access the API &lt;br /&gt;&lt;br /&gt;  Schema: &lt;br /&gt;  { &lt;br /&gt;  \&quot;access_options\&quot;: { &lt;br /&gt;  \&quot;provider\&quot;: \&quot;provider\&quot;, &lt;br /&gt;  \&quot;environment\&quot;: \&quot;environment\&quot;, &lt;br /&gt;  \&quot;credentials_id\&quot;: \&quot;00000000-0000-0000-0000-000000000000\&quot; &lt;br /&gt;  }, &lt;br /&gt;  \&quot;meta\&quot;: { &lt;br /&gt;  \&quot;additionalKey\&quot;: \&quot;keyValue\&quot; &lt;br /&gt;  } &lt;br /&gt;  } | 
 **createZoneRequestModel** | [**CreateZoneRequestModel**](CreateZoneRequestModel.md) | Data used to create a DNS zone | 

### Return type

[**Zone**](Zone.md)

### Authorization

[oidc](../README.md#oidc)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/_*+json
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiDnsZoneZoneGet

> Zone ApiDnsZoneZoneGet(ctx, zone).XApiOptions(xApiOptions).Execute()

Loads the specified DNS zone

### Example

```go
package main

import (
    "context"
    "fmt"
    "os"
    openapiclient "./openapi"
)

func main() {
    zone := "zone_example" // string | The name of the zone to query.
    xApiOptions := "xApiOptions_example" // string | Data used to access the API <br /><br />  Schema: <br />  { <br />  \"access_options\": { <br />  \"provider\": \"provider\", <br />  \"environment\": \"environment\", <br />  \"credentials_id\": \"00000000-0000-0000-0000-000000000000\" <br />  }, <br />  \"meta\": { <br />  \"additionalKey\": \"keyValue\" <br />  } <br />  }

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.ZoneApi.ApiDnsZoneZoneGet(context.Background(), zone).XApiOptions(xApiOptions).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `ZoneApi.ApiDnsZoneZoneGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ApiDnsZoneZoneGet`: Zone
    fmt.Fprintf(os.Stdout, "Response from `ZoneApi.ApiDnsZoneZoneGet`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**zone** | **string** | The name of the zone to query. | 

### Other Parameters

Other parameters are passed through a pointer to a apiApiDnsZoneZoneGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **xApiOptions** | **string** | Data used to access the API &lt;br /&gt;&lt;br /&gt;  Schema: &lt;br /&gt;  { &lt;br /&gt;  \&quot;access_options\&quot;: { &lt;br /&gt;  \&quot;provider\&quot;: \&quot;provider\&quot;, &lt;br /&gt;  \&quot;environment\&quot;: \&quot;environment\&quot;, &lt;br /&gt;  \&quot;credentials_id\&quot;: \&quot;00000000-0000-0000-0000-000000000000\&quot; &lt;br /&gt;  }, &lt;br /&gt;  \&quot;meta\&quot;: { &lt;br /&gt;  \&quot;additionalKey\&quot;: \&quot;keyValue\&quot; &lt;br /&gt;  } &lt;br /&gt;  } | 

### Return type

[**Zone**](Zone.md)

### Authorization

[oidc](../README.md#oidc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

