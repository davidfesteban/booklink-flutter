import 'package:booklink_visual/api/model/user_payload.dart';
import 'package:booklink_visual/screen/cubit/token_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/api/user_api_service.dart';

class UserCubit extends Cubit<UserPayload?> {
  UserCubit() : super(null);

  void update(UserPayload userPayload) => emit(userPayload);

  void remove() => emit(null);

  UserPayload? get() => state;

  static Future<bool> Function() reloadFromApi(BuildContext context) => () async {
    var jwtToken = context.read<TokenCubit>().get();
    var user = await UserApiService().findDetails(jwtToken!);

    if (user != null) {
      context.read<UserCubit>().update(user);
      return true;
    }

    return false;
  };
}
