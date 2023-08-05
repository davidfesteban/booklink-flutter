import 'package:booklink_visual/main_viewmodel.dart';
import 'package:booklink_visual/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            }, onError: (error) {
              context.read<KeyStoreCubit>().get().navigatorKey.currentState?.pop();
              Future.delayed(const Duration(seconds: 1), () {
                context.read<KeyStoreCubit>().get().scaffoldKey.currentState?.showSnackBar(const SnackBar(content: Text("We couldn´t find your user (replace by error)")));
              });
            }));
  }
}
