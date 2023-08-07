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
      print(await instance.createBusiness(
"Bearer eyJhbGciOiJIUzUxMiJ9.eyJwYXNzd29yZCI6InBhc3N3b3JkIiwiZW1haWwiOiJkYXZpZEBtaXNlaS5kZXYiLCJpYXQiOjE2OTEzNjg3NjEsImV4cCI6MTY5MTM5NzU2MX0.J-K66YmcWxs7d1_XkzhRh75FQmMl0O9sVeiurqbTbg15Ddcd8sBf671-JuBmF3ttgcrGX3q6jtDHShea46uK1A",
          BusinessPayload(
              subdomain: "barbershop",
              name: "Gentlemen Barbershop",
              address: "Am Bernhardspfad 1",
              email: "barbershop@barbershop.com",
              phone: "666777888",
              slotDurationByServices: {
                'SHORTCUT': 30,
                'HAIRCUT': 90,
                'BEARDCUT': 15,
                'HEADMASSAGE': 30,
              },
              workingHoursByDay: {
                "MONDAY": WorkingHours(
                    workStartHour: LocalTime(hour: 08, minute: 00, second: 00),
                    workStopHour: LocalTime(hour: 18, minute: 00, second: 00),
                    breakStartHour: LocalTime(hour: 12, minute: 00, second: 00),
                    breakStopHour: LocalTime(hour: 13, minute: 00, second: 00)),
                "TUESDAY": WorkingHours(
                    workStartHour: LocalTime(hour: 08, minute: 00, second: 00),
                    workStopHour: LocalTime(hour: 18, minute: 00, second: 00),
                    breakStartHour: LocalTime(hour: 12, minute: 00, second: 00),
                    breakStopHour: LocalTime(hour: 13, minute: 00, second: 00)),
                "WEDNESDAY": WorkingHours(
                    workStartHour: LocalTime(hour: 08, minute: 00, second: 00),
                    workStopHour: LocalTime(hour: 18, minute: 00, second: 00),
                    breakStartHour: LocalTime(hour: 12, minute: 00, second: 00),
                    breakStopHour: LocalTime(hour: 13, minute: 00, second: 00)),
                "THURSDAY": WorkingHours(
                    workStartHour: LocalTime(hour: 08, minute: 00, second: 00),
                    workStopHour: LocalTime(hour: 18, minute: 00, second: 00),
                    breakStartHour: LocalTime(hour: 12, minute: 00, second: 00),
                    breakStopHour: LocalTime(hour: 13, minute: 00, second: 00)),
                "FRIDAY": WorkingHours(
                    workStartHour: LocalTime(hour: 08, minute: 00, second: 00),
                    workStopHour: LocalTime(hour: 18, minute: 00, second: 00),
                    breakStartHour: LocalTime(hour: 12, minute: 00, second: 00),
                    breakStopHour: LocalTime(hour: 13, minute: 00, second: 00)),
                "SATURDAY": WorkingHours(
                    workStartHour: LocalTime(hour: 11, minute: 00, second: 00),
                    workStopHour: LocalTime(hour: 15, minute: 00, second: 00),
                    breakStartHour: LocalTime(hour: 12, minute: 00, second: 00),
                    breakStopHour: LocalTime(hour: 13, minute: 00, second: 00)),
                "SUNDAY": WorkingHours(
                    workStartHour: LocalTime(hour: 08, minute: 00, second: 00),
                    workStopHour: LocalTime(hour: 08, minute: 00, second: 00),
                    breakStartHour: LocalTime(hour: 08, minute: 00, second: 00),
                    breakStopHour: LocalTime(hour: 08, minute: 00, second: 00)),
              },
              slotOwners: {"AYOUB", "BRIN", "MOHAMMED"}
          )));
    });

    //Future<BusinessPayload> findBusinessDetails(String host) async
    test('test findBusinessDetails', () async {
      print(await instance.findBusinessDetails("barbershop.booklink.app"));
    });

    //Future<BusinessPayload> modifyBusinessDetails(String authorization, BusinessPayload businessPayload) async
    test('test modifyBusinessDetails', () async {
      await instance.modifyBusinessDetails("authorization",
          businessPayload)
    });
  });
}
