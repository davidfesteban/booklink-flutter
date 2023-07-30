# swagger.api.BusinessCrudControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBusiness**](BusinessCrudControllerApi.md#createBusiness) | **POST** /api/private/business/create | 
[**findBusinessDetails**](BusinessCrudControllerApi.md#findBusinessDetails) | **GET** /api/private/business/details | 
[**modifyBusinessDetails**](BusinessCrudControllerApi.md#modifyBusinessDetails) | **POST** /api/private/business/modify | 

# **createBusiness**
> BusinessPayload createBusiness(body, authorization)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BusinessCrudControllerApi();
var body = new BusinessPayload(); // BusinessPayload | 
var authorization = authorization_example; // String | 

try {
    var result = api_instance.createBusiness(body, authorization);
    print(result);
} catch (e) {
    print("Exception when calling BusinessCrudControllerApi->createBusiness: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BusinessPayload**](BusinessPayload.md)|  | 
 **authorization** | **String**|  | 

### Return type

[**BusinessPayload**](BusinessPayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **findBusinessDetails**
> BusinessPayload findBusinessDetails(host)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BusinessCrudControllerApi();
var host = host_example; // String | 

try {
    var result = api_instance.findBusinessDetails(host);
    print(result);
} catch (e) {
    print("Exception when calling BusinessCrudControllerApi->findBusinessDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **host** | **String**|  | 

### Return type

[**BusinessPayload**](BusinessPayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyBusinessDetails**
> BusinessPayload modifyBusinessDetails(body, authorization)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new BusinessCrudControllerApi();
var body = new BusinessPayload(); // BusinessPayload | 
var authorization = authorization_example; // String | 

try {
    var result = api_instance.modifyBusinessDetails(body, authorization);
    print(result);
} catch (e) {
    print("Exception when calling BusinessCrudControllerApi->modifyBusinessDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BusinessPayload**](BusinessPayload.md)|  | 
 **authorization** | **String**|  | 

### Return type

[**BusinessPayload**](BusinessPayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

