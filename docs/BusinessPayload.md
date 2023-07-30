# swagger.model.BusinessPayload

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**subdomain** | **String** |  | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**address** | **String** |  | [optional] [default to null]
**email** | **String** |  | [optional] [default to null]
**phone** | **String** |  | [optional] [default to null]
**slotDurationByServices** | **Map&lt;String, int&gt;** |  | [optional] [default to {}]
**workingHoursByDay** | [**Map&lt;String, WorkingHours&gt;**](WorkingHours.md) |  | [optional] [default to {}]
**slotOwners** | **List&lt;String&gt;** |  | [optional] [default to []]
**specialWorkingDays** | [**Map&lt;String, WorkingHours&gt;**](WorkingHours.md) |  | [optional] [default to {}]
**appointments** | [**List&lt;AppointmentPayload&gt;**](AppointmentPayload.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

