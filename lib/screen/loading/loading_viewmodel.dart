import 'package:booklink_visual/api/api_exception.dart';
import 'package:booklink_visual/screen/cubit/navigator_cubit.dart';
import 'package:booklink_visual/screen/cubit/snackbar_cubit.dart';
import 'package:booklink_visual/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoadingViewModel {
  static void perform(BuildContext context, String nextRoute, Future<bool> Function() action) {
    context.read<NavigatorCubit>().get().currentState?.pushNamed(loading_route);

    Future.delayed(
        const Duration(seconds: 2),
        () => action.call().then((value) {
              if (value) {
                context.read<NavigatorCubit>().get().currentState?.pushReplacementNamed(nextRoute);
              } else {
                //TODO: Maybe pop depending on type of error?
                context.read<NavigatorCubit>().get().currentState?.pushReplacementNamed(login_route);
                Future.delayed(const Duration(seconds: 1), () {
                  context.read<SnackbarCubit>().get().currentState?.showSnackBar(const SnackBar(content: Text("The operation has not been completed")));
                });
              }
            }).catchError((error) {
              //TODO: Maybe pop depending on type of error?
              print(error);

              context.read<NavigatorCubit>().get().currentState?.pushReplacementNamed(login_route);
              Future.delayed(const Duration(seconds: 1), () {
                if (error is ApiException) {
                  context.read<SnackbarCubit>().get().currentState?.showSnackBar(SnackBar(content: Text(error.toString())));
                } else {
                  context.read<SnackbarCubit>().get().currentState?.showSnackBar(const SnackBar(content: Text("Internal error")));
                }
              });
            }));
  }
}
