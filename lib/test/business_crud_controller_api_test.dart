//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:test/test.dart';

import '../api/api.dart';


/// tests for BusinessCrudControllerApi
void main() {
  final instance = BusinessCrudControllerApi();

  group('tests for BusinessCrudControllerApi', () {
    //Future<BusinessPayload> createBusiness(String authorization, BusinessPayload businessPayload) async
    test('test createBusiness', () async {
      instance.createBusiness("code", BusinessPayload());
    });

    //Future<BusinessPayload> findBusinessDetails(String host) async
    test('test findBusinessDetails', () async {
      // TODO
    });

    //Future<BusinessPayload> modifyBusinessDetails(String authorization, BusinessPayload businessPayload) async
    test('test modifyBusinessDetails', () async {
      // TODO
    });

  });
}
