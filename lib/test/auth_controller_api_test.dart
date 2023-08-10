//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'dart:collection';
import 'dart:convert';

import 'package:booklink_visual/api/api/auth_api_service.dart';
import 'package:test/test.dart';

import '../api/api.dart';

/// tests for AuthControllerApi
void main() {
  final instance = AuthApiService();

  group('tests for ', () {
    //Future<String> authenticateUser(String email, String password) async
    test('test authenticateUser', () async {
      var token = await instance.("david@misei.dev", "password");
      print(token);
    });

    //Future<Object> confirmUser(String uuid) async
    test('test confirmUser', () async {
      // TODO
    });

    //Future<Object> registerUser(UserPayload userPayload) async
    test('test registerUser', () async {
      await instance.registerUser(UserPayload(name: "David Fdez", email: "david@misei.dev", password: "password", phone: "666789987"));
    });
  });
}
