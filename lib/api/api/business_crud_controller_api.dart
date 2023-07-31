//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BusinessCrudControllerApi {
  BusinessCrudControllerApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Performs an HTTP 'POST /api/private/business/create' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization (required):
  ///
  /// * [BusinessPayload] businessPayload (required):
  Future<Response> createBusinessWithHttpInfo(String authorization, BusinessPayload businessPayload,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/private/business/create';

    // ignore: prefer_final_locals
    Object? postBody = businessPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] authorization (required):
  ///
  /// * [BusinessPayload] businessPayload (required):
  Future<BusinessPayload?> createBusiness(String authorization, BusinessPayload businessPayload,) async {
    final response = await createBusinessWithHttpInfo(authorization, businessPayload,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusinessPayload',) as BusinessPayload;
    
    }
    return null;
  }

  /// Performs an HTTP 'GET /api/private/business/details' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] host (required):
  Future<Response> findBusinessDetailsWithHttpInfo(String host,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/private/business/details';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Host'] = parameterToString(host);

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
  /// * [String] host (required):
  Future<BusinessPayload?> findBusinessDetails(String host,) async {
    final response = await findBusinessDetailsWithHttpInfo(host,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusinessPayload',) as BusinessPayload;
    
    }
    return null;
  }

  /// Performs an HTTP 'POST /api/private/business/modify' operation and returns the [Response].
  /// Parameters:
  ///
  /// * [String] authorization (required):
  ///
  /// * [BusinessPayload] businessPayload (required):
  Future<Response> modifyBusinessDetailsWithHttpInfo(String authorization, BusinessPayload businessPayload,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/private/business/modify';

    // ignore: prefer_final_locals
    Object? postBody = businessPayload;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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
  /// * [String] authorization (required):
  ///
  /// * [BusinessPayload] businessPayload (required):
  Future<BusinessPayload?> modifyBusinessDetails(String authorization, BusinessPayload businessPayload,) async {
    final response = await modifyBusinessDetailsWithHttpInfo(authorization, businessPayload,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'BusinessPayload',) as BusinessPayload;
    
    }
    return null;
  }
}
