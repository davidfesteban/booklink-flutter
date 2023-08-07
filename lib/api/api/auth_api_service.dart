import 'dart:async';

import '../api_client.dart';
import '../api_helper.dart';
import '../model/user_payload.dart';
import 'base_controller_api.dart';

class AuthApiService extends BaseControllerApi {
  AuthApiService({ApiClient? apiClient}) : super(apiClient: apiClient);

  Future<String?> authenticateUser(String email, String password) async {
    const path = '/api/public/auth/login';
    final queryParams = <QueryParam>[QueryParam('email', email), QueryParam('password', password)];

    final response = await performApiCall(path, 'GET', queryParams: queryParams, contentType: "text/plain");

    return await handleResponse<String>(response);
  }

  Future<Object?> registerUser(UserPayload userPayload) async {
    const path = '/api/public/auth/join';

    final response = await performApiCall(path, 'POST', postBody: userPayload);

    return await handleResponse(response);
  }
}
