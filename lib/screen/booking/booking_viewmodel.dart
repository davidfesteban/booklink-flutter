import 'package:booklink_visual/api/api.dart';
import 'package:booklink_visual/screen/loading/loading_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes.dart';

class BookingViewModel {
  static void recoverBusinessDetails(BuildContext context) {
    LoadingViewModel.perform(context, booking_route, () async {
      var businessPayload = await BusinessCrudControllerApi().findBusinessDetails(Uri.base.host);

      if (businessPayload != null) {
        context.read<BusinessCubit>().update(businessPayload);
        return true;
      }

      return false;
    });
  }
}

class BusinessCubit extends Cubit<BusinessPayload?> {
  BusinessCubit() : super(null);

  void update(BusinessPayload businessPayload) => emit(businessPayload);
}
