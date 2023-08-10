import 'package:booklink_visual/api/api/user_api_service.dart';
import 'package:booklink_visual/api/model/user_payload.dart';
import 'package:booklink_visual/utils/persistanceutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../api/api/auth_api_service.dart';

class TokenCubit extends Cubit<String?> {
  TokenCubit() : super(null);

  void update(String token) => emit(token);

  void remove() => emit(null);

  String? get() => state;

  static Future<bool> Function() reloadFromApi(BuildContext context) => () async {
        var storedJwtToken = await PersistanceUtils.getUserTokenFromMemory();
        await UserApiService().isValidToken(storedJwtToken!);
        context.read<TokenCubit>().update(storedJwtToken);
        return true;
      };

  static Future<bool> Function() authenticate(BuildContext context, UserPayload userPayload) => () async {
        var token = await AuthApiService().authenticateUser(userPayload.email!, userPayload.password!);
        token = "Bearer " + token!;
        context.read<TokenCubit>().update(token);
        return PersistanceUtils.addUserTokenOnMemory(token);
      };

  static Future<bool> Function() register(BuildContext context, UserPayload userPayload) => () async {
        await AuthApiService().registerUser(userPayload);
        return true;
      };

  static Future<bool> Function() logout(BuildContext context) => () async {
        await PersistanceUtils.removeUserOnMemory();
        context.read<TokenCubit>().remove();
        return true;
      };
}
