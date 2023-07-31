//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AppointmentCrudControllerApi {
  AppointmentCrudControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/private/appointment/create' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] host (required):
  ///
  /// * [String] authorization (required):
  ///
  /// * [AppointmentPayload] appointmentPayload (required):
  Future<Response> createAppointmentWithHttpInfo(String host, String authorization, AppointmentPayload appointmentPayload,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/private/appointment/create';

    // ignore: prefer_final_locals
    Object? postBody = appointmentPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Host'] = parameterToString(host);
    headerParams[r'Authorization'] = parameterToString(authorization);

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] host (required):
  ///
  /// * [String] authorization (required):
  ///
  /// * [AppointmentPayload] appointmentPayload (required):
  Future<AppointmentPayload?> createAppointment(String host, String authorization, AppointmentPayload appointmentPayload,) async {
    final response = await createAppointmentWithHttpInfo(host, authorization, appointmentPayload,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppointmentPayload',) as AppointmentPayload;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/private/appointment/remove' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization (required):
  Future<Response> removeAppointmentWithHttpInfo(String id, String authorization,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/private/appointment/remove';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));

    headerParams[r'Authorization'] = parameterToString(authorization);

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [String] authorization (required):
  Future<AppointmentPayload?> removeAppointment(String id, String authorization,) async {
    final response = await removeAppointmentWithHttpInfo(id, authorization,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'AppointmentPayload',) as AppointmentPayload;
    
    }
    return null;
  }
}
