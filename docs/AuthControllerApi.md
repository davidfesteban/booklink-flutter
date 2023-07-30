# swagger.api.AuthControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticateUser**](AuthControllerApi.md#authenticateUser) | **GET** /api/public/auth/login | 
[**confirmUser**](AuthControllerApi.md#confirmUser) | **GET** /api/public/auth/confirm | 
[**registerUser**](AuthControllerApi.md#registerUser) | **POST** /api/public/auth/join | 

# **authenticateUser**
> String authenticateUser(email, password)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthControllerApi();
var email = email_example; // String | 
var password = password_example; // String | 

try {
    var result = api_instance.authenticateUser(email, password);
    print(result);
} catch (e) {
    print("Exception when calling AuthControllerApi->authenticateUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | 
 **password** | **String**|  | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmUser**
> Object confirmUser(uuid)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthControllerApi();
var uuid = uuid_example; // String | 

try {
    var result = api_instance.confirmUser(uuid);
    print(result);
} catch (e) {
    print("Exception when calling AuthControllerApi->confirmUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
> Object registerUser(body)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthControllerApi();
var body = new UserPayload(); // UserPayload | 

try {
    var result = api_instance.registerUser(body);
    print(result);
} catch (e) {
    print("Exception when calling AuthControllerApi->registerUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPayload**](UserPayload.md)|  | 

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

