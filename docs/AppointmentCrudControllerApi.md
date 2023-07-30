# swagger.api.AppointmentCrudControllerApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAppointment**](AppointmentCrudControllerApi.md#createAppointment) | **POST** /api/private/appointment/create | 
[**removeAppointment**](AppointmentCrudControllerApi.md#removeAppointment) | **GET** /api/private/appointment/remove | 

# **createAppointment**
> AppointmentPayload createAppointment(body, host, authorization)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppointmentCrudControllerApi();
var body = new AppointmentPayload(); // AppointmentPayload | 
var host = host_example; // String | 
var authorization = authorization_example; // String | 

try {
    var result = api_instance.createAppointment(body, host, authorization);
    print(result);
} catch (e) {
    print("Exception when calling AppointmentCrudControllerApi->createAppointment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AppointmentPayload**](AppointmentPayload.md)|  | 
 **host** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

[**AppointmentPayload**](AppointmentPayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeAppointment**
> AppointmentPayload removeAppointment(id, authorization)



### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AppointmentCrudControllerApi();
var id = id_example; // String | 
var authorization = authorization_example; // String | 

try {
    var result = api_instance.removeAppointment(id, authorization);
    print(result);
} catch (e) {
    print("Exception when calling AppointmentCrudControllerApi->removeAppointment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **authorization** | **String**|  | 

### Return type

[**AppointmentPayload**](AppointmentPayload.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

