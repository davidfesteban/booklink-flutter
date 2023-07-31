import 'package:booklink_visual/codegen/api.dart';
import 'package:booklink_visual/service/persistanceutils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainViewModel {
  static Future<bool> reloadUser(BuildContext context) async {
    var jwtToken = context.read<KeyStoreCubit>().get().jwtToken;
    var userData = context.read<UserCache>().get();
    var jwtTokenStore = await PersistanceUtils.getUserTokenFromMemory();

    jwtToken ??= jwtTokenStore;

    if (userData != null) {
      jwtToken ??= await AuthControllerApi()
          .authenticateUser(userData.email!, userData.password!);
    }

    if (jwtToken == null) {
      return false;
    } else {
      userData = await UserCrudControllerApi().findDetails(jwtToken);

      if (userData == null || userData.toString().isEmpty) {
        return false;
      } else {
        context.read<KeyStoreCubit>().get().setToken("Bearer $jwtToken");
        context.read<UserCache>().update(userData);
        return await PersistanceUtils.addUserTokenOnMemory(
            "Bearer $jwtToken");
      }
    }
  }
}

//region Cubit
class UserCache extends Cubit<UserPayload?> {
  UserCache() : super(null);

  void update(UserPayload userPayload) => emit(userPayload);

  void remove() => emit(null);

  UserPayload? get() => state;
}

class KeyStoreCubit extends Cubit<KeyStore> {
  KeyStoreCubit() : super(KeyStore(GlobalKey(), GlobalKey(), null));

  void update(KeyStore keyStore) => emit(keyStore);

  void setToken(String token) => emit(state.setToken(token));

  KeyStore get() => state;
}

class LoadingSnackCubit extends Cubit<LoadingSnackState> {
  LoadingSnackCubit() : super(LoadingSnackState(false, null));

  void update(LoadingSnackState loadingSnackState) => emit(loadingSnackState);

  LoadingSnackState get() => state;
}
//endregion

//region STATES

class KeyStore {
  KeyStore(this.navigatorKey, this.scaffoldKey, this.jwtToken);

  GlobalKey<NavigatorState> navigatorKey;
  GlobalKey<ScaffoldMessengerState> scaffoldKey;
  String? jwtToken;

  KeyStore setToken(String? jwtToken) {
    this.jwtToken = jwtToken;
    return this;
  }
}

class LoadingSnackState {
  LoadingSnackState(this.isLoading, this.snackBarInfo);

  bool isLoading;
  String? snackBarInfo;
}
//endregion
