import 'package:booklink_visual/api/api_exception.dart';
import 'package:booklink_visual/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/user/key_store.dart';

class LoadingViewModel {
  static void perform(BuildContext context, String nextRoute, Future<bool> Function() action) {
    context.read<KeyStoreCubit>().get().navigatorKey.currentState?.pushNamed(loading_route);

    Future.delayed(
        const Duration(seconds: 2),
        () => action.call().then((value) {
              if (value) {
                context.read<KeyStoreCubit>().get().navigatorKey.currentState?.pushReplacementNamed(nextRoute);
              } else {
                context.read<KeyStoreCubit>().get().navigatorKey.currentState?.pop();
                Future.delayed(const Duration(seconds: 1), () {
                  context.read<KeyStoreCubit>().get().scaffoldKey.currentState?.showSnackBar(const SnackBar(content: Text("The operation has not been completed")));
                });
              }
            }).catchError((error) {
              context.read<KeyStoreCubit>().get().navigatorKey.currentState?.pop();
              Future.delayed(const Duration(seconds: 1), () {
                if (error is ApiException) {
                  context.read<KeyStoreCubit>().get().scaffoldKey.currentState?.showSnackBar(SnackBar(content: Text(error.toString())));
                } else {
                  context.read<KeyStoreCubit>().get().scaffoldKey.currentState?.showSnackBar(const SnackBar(content: Text("Internal error")));
                }
              });
            }));
  }
}
