import 'package:booklink_visual/main_pages/login_page.dart';
import 'package:booklink_visual/main_viewmodel.dart';
import 'package:booklink_visual/routes.dart';
import 'package:booklink_visual/screen/landing/landing.dart';
import 'package:booklink_visual/utils/hard_coded_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  HardCodedData.generateHardCodedData();
  runApp(const BooklinkApp());
}

class BooklinkApp extends StatelessWidget {
  const BooklinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              lazy: false, create: (BuildContext context) => UserCache()),
          BlocProvider(
              lazy: false, create: (BuildContext context) => KeyStoreCubit()),
          BlocProvider(
              lazy: false,
              create: (BuildContext context) => LoadingSnackCubit())
        ],
        child: Builder(builder: ((context) {
          return BlocListener<LoadingSnackCubit, LoadingSnackState>(
              listener: (context, state) {
                if (state.isLoading) {
                  context
                      .read<KeyStoreCubit>()
                      .get()
                      .navigatorKey
                      .currentState
                      ?.pushNamed(loading_route);
                } else if (state.snackBarInfo != null) {
                  Future.delayed(
                      const Duration(seconds: 1),
                      () => context
                          .read<KeyStoreCubit>()
                          .get()
                          .scaffoldKey
                          .currentState
                          ?.showSnackBar(
                              SnackBar(content: Text(state.snackBarInfo!))));
                }
              },
              child: MaterialApp(
                  title: 'Booklink',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(primaryColor: Colors.black),
                  initialRoute: landing_route,
                  scaffoldMessengerKey:
                      context.read<KeyStoreCubit>().get().scaffoldKey,
                  navigatorKey:
                      context.read<KeyStoreCubit>().get().navigatorKey,
                  routes: {
                    landing_route: (context) => const LandingScreen(),
                    login_route: (context) => LoginPage()
                    //loading_route: (context) => LoadingScreen(),
                    //welcome_route: (context) => WelcomeScreen(),
                    //home_route: (context) => HomeScreen(),
                    //success_route: (context) => SuccessScreen(),
                    //error_route: (context) => ErrorScreen()
                  }));
        })));
  }
}
