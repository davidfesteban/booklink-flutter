import 'package:booklink_visual/api/model/appointment_payload.dart';
import 'package:booklink_visual/api/model/business_payload.dart';
import 'package:booklink_visual/api/model/user_payload.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserAppointmentsCubit extends Cubit<UserAppointments?> {
  UserAppointmentsCubit() : super(null);

  void update(UserAppointments userAppointments) => emit(userAppointments);

  void remove() => emit(null);

  UserAppointments? get() => state;
}

class UserAppointments {
  UserAppointments(this.userPayload, this.userAppointments);

  UserPayload userPayload;
  List<UnionBusinessAppointment>? userAppointments;
}

class UnionBusinessAppointment {
  UnionBusinessAppointment(this.appointmentPayload, this.businessPayload);

  AppointmentPayload appointmentPayload;
  BusinessPayload businessPayload;
}
