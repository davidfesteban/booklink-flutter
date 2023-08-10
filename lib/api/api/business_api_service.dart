import 'dart:async';

import '../api_client.dart';
import '../api_helper.dart';
import '../model/business_payload.dart';
import 'base_controller_api.dart';

class BusinessApiService extends BaseControllerApi {
  BusinessApiService({ApiClient? apiClient}) : super(apiClient: apiClient);

  Future<BusinessPayload?> createBusiness(String authorization, BusinessPayload businessPayload) async {
    const path = '/api/private/business/create';
    final headerParams = <String, String>{'Authorization': parameterToString(authorization)};

    final response = await performApiCall(path, 'POST', postBody: businessPayload, headerParams: headerParams);

    return await handleResponse(response);
  }

  Future<BusinessPayload?> modifyBusinessDetails(String authorization, BusinessPayload businessPayload) async {
    const path = '/api/private/business/modify';
    final headerParams = <String, String>{'Authorization': parameterToString(authorization)};

    final response = await performApiCall(path, 'POST', postBody: businessPayload, headerParams: headerParams);

    return await handleResponse(response);
  }

  Future<BusinessPayload?> findBusinessDetails(String host) async {
    const path = '/api/public/business/details';
    final queryParams = <QueryParam>[QueryParam("host", host)];

    final response = await performApiCall(path, 'GET', queryParams: queryParams);

    return await handleResponse(response);
  }
}
