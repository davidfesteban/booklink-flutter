import 'dart:async';

import '../api_client.dart';
import '../api_helper.dart';
import '../model/appointment_payload.dart';
import 'base_controller_api.dart';

class AppointmentApiService extends BaseControllerApi {
  AppointmentApiService({ApiClient? apiClient}) : super(apiClient: apiClient);

  Future<AppointmentPayload?> createAppointment(String authorization, AppointmentPayload appointmentPayload) async {
    const path = '/api/private/appointment/create';
    final headerParams = <String, String>{'Authorization': parameterToString(authorization)};

    final response = await performApiCall(path, 'POST', postBody: appointmentPayload, headerParams: headerParams);

    return await handleResponse(response);
  }

  Future<AppointmentPayload?> removeAppointment(String id, String authorization) async {
    const path = '/api/private/appointment/remove';
    final queryParams = <QueryParam>[QueryParam('id', id)];
    final headerParams = <String, String>{'Authorization': parameterToString(authorization)};

    final response = await performApiCall(path, 'GET', queryParams: queryParams, headerParams: headerParams);

    return await handleResponse(response);
  }
}
