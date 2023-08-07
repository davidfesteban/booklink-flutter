import 'dart:io';
import 'package:http/http.dart';
import '../api_client.dart';
import '../api_exception.dart';
import '../api_helper.dart';

class BaseControllerApi {
  final ApiClient apiClient;

  BaseControllerApi({ApiClient? apiClient}) : apiClient = apiClient ?? ApiClient();

  Future<Response> performApiCall(
    String path,
    String method, {
    List<QueryParam> queryParams = const <QueryParam>[],
    Object? postBody,
    Map<String, String> headerParams = const {},
    Map<String, String> formParams = const {},
    String contentType = "application/json",
  }) async {
    final response = await apiClient.invokeAPI(path, method, queryParams, postBody, headerParams, formParams, contentType);
    return response;
  }

  Future<T?> handleResponse<T>(Response response) async {
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await decodeBodyBytes(response));
    }
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await decodeBodyBytes(response), T.toString()) as T;
    }
    return null;
  }
}