import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../api/model/appointment_payload.dart';
import '../../../api/model/business_payload.dart';
import '../../../api/model/user_payload.dart';

class BusinessAppointmentsCubit extends Cubit<BusinessAppointments?> {
  BusinessAppointmentsCubit() : super(null);

  void update(BusinessAppointments businessAppointments) => emit(businessAppointments);

  void remove() => emit(null);

  BusinessAppointments? get() => state;
}

class BusinessAppointments {
  BusinessAppointments(this.businessPayload, this.businessAppointments);

  BusinessPayload businessPayload;
  List<UnionUserAppointment>? businessAppointments;
}

class UnionUserAppointment {
  UnionUserAppointment(this.appointmentPayload, this.userPayload);

  //TODO: Check no password is stored
  AppointmentPayload appointmentPayload;
  UserPayload userPayload;
}
