# transpaer_api.api.DefaultApi

## Load the API package
```dart
import 'package:transpaer_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**checkHealth**](DefaultApi.md#checkhealth) | **GET** / | Health check
[**getAlternatives**](DefaultApi.md#getalternatives) | **GET** /product/{productIdVariant}:{id}/alternatives | Get product alternatives.
[**getCategory**](DefaultApi.md#getcategory) | **GET** /category/{category} | Get category.
[**getLibrary**](DefaultApi.md#getlibrary) | **GET** /library | Get library contents.
[**getLibraryItem**](DefaultApi.md#getlibraryitem) | **GET** /library/{topic} | Get library item.
[**getOrganisation**](DefaultApi.md#getorganisation) | **GET** /organisation/{organisationIdVariant}:{id} | Get organisation.
[**getProduct**](DefaultApi.md#getproduct) | **GET** /product/{productIdVariant}:{id} | Get product.
[**searchByText**](DefaultApi.md#searchbytext) | **GET** /search/text | Text search.


# **checkHealth**
> checkHealth()

Health check

Service health check.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();

try {
    api_instance.checkHealth();
} catch (e) {
    print('Exception when calling DefaultApi->checkHealth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAlternatives**
> List<CategoryAlternatives> getAlternatives(productIdVariant, id, region)

Get product alternatives.

Returns a list of alternative products for each of products category.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();
final productIdVariant = ; // ProductIdVariant | Variant of a product ID.
final id = id_example; // String | ID of a resource.
final region = region_example; // String | Region code.

try {
    final result = api_instance.getAlternatives(productIdVariant, id, region);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getAlternatives: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productIdVariant** | [**ProductIdVariant**](.md)| Variant of a product ID. | 
 **id** | **String**| ID of a resource. | 
 **region** | **String**| Region code. | [optional] 

### Return type

[**List<CategoryAlternatives>**](CategoryAlternatives.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCategory**
> CategoryFull getCategory(category)

Get category.

Returns full info about a specified category.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();
final category = category_example; // String | Category path.

try {
    final result = api_instance.getCategory(category);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getCategory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **category** | **String**| Category path. | 

### Return type

[**CategoryFull**](CategoryFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibrary**
> LibraryContents getLibrary()

Get library contents.

Returns a list of summaries of all library items.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.getLibrary();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLibrary: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**LibraryContents**](LibraryContents.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraryItem**
> LibraryItemFull getLibraryItem(topic)

Get library item.

Returns a full library item.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();
final topic = topic_example; // String | Library topic.

try {
    final result = api_instance.getLibraryItem(topic);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getLibraryItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **topic** | **String**| Library topic. | 

### Return type

[**LibraryItemFull**](LibraryItemFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
> OrganisationFull getOrganisation(organisationIdVariant, id)

Get organisation.

Returns full info about a specified organisation.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();
final organisationIdVariant = ; // OrganisationIdVariant | Variant of an organisation ID.
final id = id_example; // String | ID of a resource.

try {
    final result = api_instance.getOrganisation(organisationIdVariant, id);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getOrganisation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisationIdVariant** | [**OrganisationIdVariant**](.md)| Variant of an organisation ID. | 
 **id** | **String**| ID of a resource. | 

### Return type

[**OrganisationFull**](OrganisationFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProduct**
> ProductFull getProduct(productIdVariant, id, region)

Get product.

Returns full info about a specified product.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();
final productIdVariant = ; // ProductIdVariant | Variant of a product ID.
final id = id_example; // String | ID of a resource.
final region = region_example; // String | Region code.

try {
    final result = api_instance.getProduct(productIdVariant, id, region);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->getProduct: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **productIdVariant** | [**ProductIdVariant**](.md)| Variant of a product ID. | 
 **id** | **String**| ID of a resource. | 
 **region** | **String**| Region code. | [optional] 

### Return type

[**ProductFull**](ProductFull.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchByText**
> TextSearchResults searchByText(query)

Text search.

Returns results of a search using a text query.

### Example
```dart
import 'package:transpaer_api/api.dart';

final api_instance = DefaultApi();
final query = query_example; // String | Text query for search.

try {
    final result = api_instance.searchByText(query);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->searchByText: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **query** | **String**| Text query for search. | 

### Return type

[**TextSearchResults**](TextSearchResults.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

