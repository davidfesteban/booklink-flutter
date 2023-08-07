import 'package:booklink_visual/screen/booking/booking.dart';
import 'package:booklink_visual/screen/booking/booking_viewmodel.dart';
import 'package:booklink_visual/screen/loading/loading.dart';
import 'package:booklink_visual/screen/registration/login_page.dart';
import 'package:booklink_visual/main_viewmodel.dart';
import 'package:booklink_visual/routes.dart';
import 'package:booklink_visual/screen/landing/landing.dart';
import 'package:booklink_visual/screen/registration/register_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

void main() {
  runApp(const BooklinkApp());
}

@Openapi(
    additionalProperties:
    AdditionalProperties(pubName: 'booklink_api', pubAuthor: 'davidfesteban'),
    inputSpecFile: 'booklink_open_api.json',
    generatorName: Generator.dart,
    outputDirectory: 'lib/autogenerated-api')
class BooklinkApp extends StatelessWidget {
  const BooklinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              lazy: false, create: (BuildContext context) => UserCacheCubit()),
          BlocProvider(
              lazy: false, create: (BuildContext context) => KeyStoreCubit()),
          BlocProvider(
              lazy: false, create: (BuildContext context) => BusinessCubit())
        ],
        child: Builder(builder: ((context) {
          return MaterialApp(
                  title: 'Booklink',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(primaryColor: Colors.black, useMaterial3: true),
                  initialRoute: landing_route,
                  scaffoldMessengerKey:
                      context.read<KeyStoreCubit>().get().scaffoldKey,
                  navigatorKey:
                      context.read<KeyStoreCubit>().get().navigatorKey,
                  routes: {
                    landing_route: (context) => const LandingScreen(),
                    login_route: (context) => const LoginPage(),
                    join_route: (context) => const JoinPage(),
                    loading_route: (context) => LoadingScreen(),
                    booking_route: (context) => const BookingScreen()
                    //welcome_route: (context) => WelcomeScreen(),
                    //success_route: (context) => SuccessScreen(),
                    //error_route: (context) => ErrorScreen()
                  });
        })));
  }
}
