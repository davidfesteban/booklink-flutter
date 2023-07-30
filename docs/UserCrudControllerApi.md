# swagger.api.UserCrudControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**findDetails**](UserCrudControllerApi.md#findDetails) | **GET** /api/public/user/findDetails | 

# **findDetails**
> UserPayload findDetails(authorization)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserCrudControllerApi();
var authorization = authorization_example; // String | 

try {
    var result = api_instance.findDetails(authorization);
    print(result);
} catch (e) {
    print("Exception when calling UserCrudControllerApi->findDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | 

### Return type

[**UserPayload**](UserPayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

