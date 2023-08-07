import 'dart:async';

import '../api_client.dart';
import '../api_helper.dart';
import '../model/user_payload.dart';
import 'base_controller_api.dart';

class UserApiService extends BaseControllerApi {
  UserApiService({ApiClient? apiClient}) : super(apiClient: apiClient);

  Future<UserPayload?> findDetails(String authorization) async {
    const path = '/api/private/user/findDetails';
    final headerParams = <String, String>{'Authorization': parameterToString(authorization)};

    final response = await performApiCall(path, 'GET', headerParams: headerParams);

    return await handleResponse(response);
  }
}
