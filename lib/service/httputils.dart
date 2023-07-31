import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class HttpUtils {
  static Future<Response> get(String hostWithPort,
      {String path = "/",
      Map<String, dynamic>? query,
      String jwtToken = ""}) async {
    //if (query == null) {
    //  query = {};
    //}
    print(jwtToken);
    return await http.get(Uri.http(hostWithPort, path, query), headers: {
      HttpHeaders.authorizationHeader: "Bearer $jwtToken",
      "Content-Type": "application/json; charset=utf-8",
      "Accept": "*/*",
      "Accept-Encoding": "gzip,deflate,br",
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Methods": "GET,PUT,PATCH,POST,DELETE",
      "Access-Control-Allow-Headers": "*",
      "Access-Control-Request-Headers": "authorization"
    });
  }

  static Future<Response> post(String hostWithPort,
      {String path = "/", Map<String, dynamic>? query, Object? body, String jwtToken = ""}) async {
    body ??= "";
    return await http.post(Uri.http(hostWithPort, path, query), body: body, headers: {
      "Access-Control-Allow-Origin": "*", // Required for CORS support to work
      "Access-Control-Allow-Credentials":
          'true', // Required for cookies, authorization headers with HTTPS
      "Access-Control-Allow-Headers":
          "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
      "Access-Control-Allow-Methods": "POST, OPTIONS",
      "Authorization": "Bearer $jwtToken"
    });
  }
}
