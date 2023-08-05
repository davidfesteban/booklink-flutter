import 'package:booklink_visual/api/api.dart';
import 'package:booklink_visual/routes.dart';
import 'package:booklink_visual/screen/loading/loading_viewmodel.dart';
import 'package:booklink_visual/service/persistanceutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../main_viewmodel.dart';

class LoginViewModel {
  static void loginUser(BuildContext context, UserPayload userPayload) {
    LoadingViewModel.perform(context, home_route, () async {
      var token = await AuthControllerApi().authenticateUser(userPayload.email!, userPayload.password!);
      token = "Bearer " + token!;
      var userPayloadDatabase = await UserCrudControllerApi().findDetails(token);

      context.read<UserCacheCubit>().update(userPayloadDatabase!);
      context.read<KeyStoreCubit>().setToken(token);
      return PersistanceUtils.addUserTokenOnMemory(token);
    });
  }

  static void registerUser(BuildContext context, UserPayload userPayload) {
    LoadingViewModel.perform(context, login_route, () async {
      await AuthControllerApi().registerUser(userPayload);
      return true;
    });
  }
}
