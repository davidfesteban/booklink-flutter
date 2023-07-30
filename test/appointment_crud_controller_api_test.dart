import 'package:booklink_visual/codegen/api.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:swagger/api.dart';
import 'package:test/test.dart';


/// tests for AppointmentCrudControllerApi
void main() {
  var instance = new AppointmentCrudControllerApi();

  group('tests for AppointmentCrudControllerApi', () {
    //Future<AppointmentPayload> createAppointment(AppointmentPayload body, String host, String authorization) async
    test('test createAppointment', () async {
      // TODO
      instance.createAppointment(body, host, authorization)
    });

    //Future<AppointmentPayload> removeAppointment(String id, String authorization) async
    test('test removeAppointment', () async {
      // TODO
    });

  });
}
