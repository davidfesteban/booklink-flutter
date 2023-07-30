library swagger.api;

import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/appointment_crud_controller_api.dart';
part 'api/auth_controller_api.dart';
part 'api/business_crud_controller_api.dart';
part 'api/user_crud_controller_api.dart';
part 'model/appointment_payload.dart';
part 'model/business_payload.dart';
part 'model/local_time.dart';
part 'model/user_payload.dart';
part 'model/working_hours.dart';

ApiClient defaultApiClient = new ApiClient();
