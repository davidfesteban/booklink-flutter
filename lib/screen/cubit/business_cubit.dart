import 'package:booklink_visual/api/model/business_payload.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BusinessCubit extends Cubit<BusinessPayload?> {
  BusinessCubit() : super(null);

  void update(BusinessPayload businessUserAppointments) => emit(businessUserAppointments);

  void remove() => emit(null);

  BusinessPayload? get() => state;

  static Future<bool> Function() reloadFromApi(BuildContext context) => () async {
    return true;
  };
}
