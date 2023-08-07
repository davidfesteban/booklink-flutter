import 'package:booklink_visual/api/model/business_payload.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PublicBusinessAppointmentsCubit extends Cubit<BusinessPayload?> {
  PublicBusinessAppointmentsCubit() : super(null);

  void update(BusinessPayload businessUserAppointments) => emit(businessUserAppointments);

  void remove() => emit(null);

  BusinessPayload? get() => state;
}
