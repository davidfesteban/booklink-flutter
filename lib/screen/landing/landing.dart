import 'package:booklink_visual/screen/cubit/token_cubit.dart';
import 'package:booklink_visual/screen/loading/loading_viewmodel.dart';
import 'package:booklink_visual/utils/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../cubit/user_cubit.dart';

//TODO: REDO
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with TickerProviderStateMixin {
  late int pageIndex;
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    pageIndex = 0;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //TODO: READ HERE
    //Right now, tries to pushReplacementNamed and if not, goes to LoginScreen
    //Next iteration: Show logo or whatever (instead of this landing), after animation push navigation
    //Next iteration: On logo, load.
    //Here we need to take in mind the deep linking
    //Observable to avoid not logged
    Future.delayed(const Duration(seconds: 3), () => LoadingViewModel.perform(context, home_route, () async {
      await TokenCubit.reloadFromApi(context).call();
      return await UserCubit.reloadFromApi(context).call();
    }) );


    return const Text("DummyLoaderScreen");
  }
}

class _AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.trackpad
      };
}
