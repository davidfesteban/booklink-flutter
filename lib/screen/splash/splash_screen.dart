import 'package:booklink_visual/main_viewmodel.dart';
import 'package:booklink_visual/screen/cubit/user/key_store.dart';
import 'package:booklink_visual/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )
      ..repeat(reverse: true);

    final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );

    //TODO: Deep linking
    Future.delayed(const Duration(seconds: 2), () =>
        MainViewModel.reloadKeyStore(context)
            .then((value) {
          if (value) {
            MainViewModel.reloadUserAppointments(context).then((value) {
              if (value) {
                context
                    .read<KeyStoreCubit>()
                    .get()
                    .navigatorKey
                    .currentState
                    ?.pushReplacementNamed(home_route);
              } else {
                context
                    .read<KeyStoreCubit>()
                    .get()
                    .navigatorKey
                    .currentState
                    ?.pushReplacementNamed(login_route);
              }
            }).catchError((error) {
              context
                  .read<KeyStoreCubit>()
                  .get()
                  .navigatorKey
                  .currentState
                  ?.pushReplacementNamed(login_route);
              return null;
            });
          } else {
            context
                .read<KeyStoreCubit>()
                .get()
                .navigatorKey
                .currentState
                ?.pushReplacementNamed(login_route);
          }
        }).catchError((error) {
          context
              .read<KeyStoreCubit>()
              .get()
              .navigatorKey
              .currentState
              ?.pushReplacementNamed(login_route);
          return null;
        }));

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Expanded(flex: 1, child: SizedBox()),
          SizedBox(width: 1, height: 50),
          SpinKitWave(color: Colors.black, size: 20),
          Expanded(flex: 1, child: SizedBox())
        ]));
  }
}