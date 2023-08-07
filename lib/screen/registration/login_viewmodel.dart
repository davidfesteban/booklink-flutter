import 'package:booklink_visual/api/api/auth_api_service.dart';
import 'package:booklink_visual/main_viewmodel.dart';
import 'package:booklink_visual/screen/loading/loading_viewmodel.dart';
import 'package:booklink_visual/utils/persistanceutils.dart';
import 'package:booklink_visual/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/model/user_payload.dart';
import '../cubit/user/key_store.dart';

class LoginViewModel {
  static void loginUser(BuildContext context, UserPayload userPayload) {
    //TODO: When a not logged user wants to book or hiperlink (not home_route)
    LoadingViewModel.perform(context, home_route, () async {
      var token = await AuthApiService().authenticateUser(userPayload.email!, userPayload.password!);
      token = "Bearer " + token!;

      context.read<KeyStoreCubit>().setToken(token);
      PersistanceUtils.addUserTokenOnMemory(token);

      return MainViewModel.reloadUserAppointments(context);
    });
  }

  static void registerUser(BuildContext context, UserPayload userPayload) {
    LoadingViewModel.perform(context, login_route, () async {
      await AuthApiService().registerUser(userPayload);
      return true;
    });
  }
}
