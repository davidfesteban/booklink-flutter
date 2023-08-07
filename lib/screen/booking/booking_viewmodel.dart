import 'package:booklink_visual/api/api/business_api_service.dart';
import 'package:booklink_visual/screen/cubit/user/business_user_appointments_cubit.dart';
import 'package:booklink_visual/screen/loading/loading_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../utils/routes.dart';

class BookingViewModel {
  static void recoverBusinessDetails(BuildContext context) {
    LoadingViewModel.perform(context, booking_route, () async {
      var businessPayload = await BusinessApiService().findBusinessDetails(/*Uri.base.host*/ "barbershop.booking.app");

      if (businessPayload != null) {
        context.read<PublicBusinessAppointmentsCubit>().update(businessPayload);
        return true;
      }

      return false;
    });
  }
}
