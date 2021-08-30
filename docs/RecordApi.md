# \RecordApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ApiDnsRecordDelete**](RecordApi.md#ApiDnsRecordDelete) | **Delete** /api/dns/Record | Deletes records which match the specified criterias
[**ApiDnsRecordGet**](RecordApi.md#ApiDnsRecordGet) | **Get** /api/dns/Record | Retrieves the DNS zone&#39;s resource records
[**ApiDnsRecordPost**](RecordApi.md#ApiDnsRecordPost) | **Post** /api/dns/Record | Creates a new DNS resource record



## ApiDnsRecordDelete

> ApiDnsRecordDelete(ctx).Zone(zone).RecordType(recordType).Name(name).XApiOptions(xApiOptions).Execute()

Deletes records which match the specified criterias

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
    zone := "zone_example" // string | Name of the DNS zone to delete a record of.
    recordType := openapiclient.RecordType("A") // RecordType | The record type of the record to delete.
    name := "name_example" // string | The record name of the record to delete.
    xApiOptions := "xApiOptions_example" // string | Data used to access the API <br /><br />  Schema: <br />  { <br />  \"access_options\": { <br />  \"provider\": \"provider\", <br />  \"environment\": \"environment\", <br />  \"credentials_id\": \"00000000-0000-0000-0000-000000000000\" <br />  }, <br />  \"meta\": { <br />  \"additionalKey\": \"keyValue\" <br />  } <br />  }

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RecordApi.ApiDnsRecordDelete(context.Background()).Zone(zone).RecordType(recordType).Name(name).XApiOptions(xApiOptions).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `RecordApi.ApiDnsRecordDelete``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDnsRecordDeleteRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zone** | **string** | Name of the DNS zone to delete a record of. | 
 **recordType** | [**RecordType**](RecordType.md) | The record type of the record to delete. | 
 **name** | **string** | The record name of the record to delete. | 
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


## ApiDnsRecordGet

> []Record ApiDnsRecordGet(ctx).Zone(zone).XApiOptions(xApiOptions).RecordType(recordType).Name(name).Execute()

Retrieves the DNS zone's resource records

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
    zone := "zone_example" // string | DNS zone to query.
    xApiOptions := "xApiOptions_example" // string | Data used to access the API <br /><br />  Schema: <br />  { <br />  \"access_options\": { <br />  \"provider\": \"provider\", <br />  \"environment\": \"environment\", <br />  \"credentials_id\": \"00000000-0000-0000-0000-000000000000\" <br />  }, <br />  \"meta\": { <br />  \"additionalKey\": \"keyValue\" <br />  } <br />  }
    recordType := openapiclient.RecordType("A") // RecordType | Filter by the record type. (optional)
    name := "name_example" // string | Filter by the record name. (optional)

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RecordApi.ApiDnsRecordGet(context.Background()).Zone(zone).XApiOptions(xApiOptions).RecordType(recordType).Name(name).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `RecordApi.ApiDnsRecordGet``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ApiDnsRecordGet`: []Record
    fmt.Fprintf(os.Stdout, "Response from `RecordApi.ApiDnsRecordGet`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDnsRecordGetRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zone** | **string** | DNS zone to query. | 
 **xApiOptions** | **string** | Data used to access the API &lt;br /&gt;&lt;br /&gt;  Schema: &lt;br /&gt;  { &lt;br /&gt;  \&quot;access_options\&quot;: { &lt;br /&gt;  \&quot;provider\&quot;: \&quot;provider\&quot;, &lt;br /&gt;  \&quot;environment\&quot;: \&quot;environment\&quot;, &lt;br /&gt;  \&quot;credentials_id\&quot;: \&quot;00000000-0000-0000-0000-000000000000\&quot; &lt;br /&gt;  }, &lt;br /&gt;  \&quot;meta\&quot;: { &lt;br /&gt;  \&quot;additionalKey\&quot;: \&quot;keyValue\&quot; &lt;br /&gt;  } &lt;br /&gt;  } | 
 **recordType** | [**RecordType**](RecordType.md) | Filter by the record type. | 
 **name** | **string** | Filter by the record name. | 

### Return type

[**[]Record**](Record.md)

### Authorization

[oidc](../README.md#oidc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ApiDnsRecordPost

> Record ApiDnsRecordPost(ctx).XApiOptions(xApiOptions).CreateRecordRequestModel(createRecordRequestModel).Execute()

Creates a new DNS resource record

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
    createRecordRequestModel := *openapiclient.NewCreateRecordRequestModel("Zone_example", "Name_example", openapiclient.RecordType("A"), "Data_example") // CreateRecordRequestModel | Data used to create a DNS resource record

    configuration := openapiclient.NewConfiguration()
    api_client := openapiclient.NewAPIClient(configuration)
    resp, r, err := api_client.RecordApi.ApiDnsRecordPost(context.Background()).XApiOptions(xApiOptions).CreateRecordRequestModel(createRecordRequestModel).Execute()
    if err.Error() != "" {
        fmt.Fprintf(os.Stderr, "Error when calling `RecordApi.ApiDnsRecordPost``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
    }
    // response from `ApiDnsRecordPost`: Record
    fmt.Fprintf(os.Stdout, "Response from `RecordApi.ApiDnsRecordPost`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiApiDnsRecordPostRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xApiOptions** | **string** | Data used to access the API &lt;br /&gt;&lt;br /&gt;  Schema: &lt;br /&gt;  { &lt;br /&gt;  \&quot;access_options\&quot;: { &lt;br /&gt;  \&quot;provider\&quot;: \&quot;provider\&quot;, &lt;br /&gt;  \&quot;environment\&quot;: \&quot;environment\&quot;, &lt;br /&gt;  \&quot;credentials_id\&quot;: \&quot;00000000-0000-0000-0000-000000000000\&quot; &lt;br /&gt;  }, &lt;br /&gt;  \&quot;meta\&quot;: { &lt;br /&gt;  \&quot;additionalKey\&quot;: \&quot;keyValue\&quot; &lt;br /&gt;  } &lt;br /&gt;  } | 
 **createRecordRequestModel** | [**CreateRecordRequestModel**](CreateRecordRequestModel.md) | Data used to create a DNS resource record | 

### Return type

[**Record**](Record.md)

### Authorization

[oidc](../README.md#oidc)

### HTTP request headers

- **Content-Type**: application/json, text/json, application/_*+json
- **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

