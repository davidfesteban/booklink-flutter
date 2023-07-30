import 'package:booklink_visual/main_viewmodel.dart';
import 'package:booklink_visual/routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'components/firstpage.dart';

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
    var userExist = MainViewModel.reloadUser(context);

    final List<Widget> pages = [
      FirstLandingPage(),
      //SecondLandingPage(),
      //ThirdLandingPage()
    ];

    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..repeat(reverse: true);
    final Animation<double> animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    final PageController controller = PageController(initialPage: pageIndex);
    final PageView pageView = PageView(
        controller: controller,
        scrollBehavior: _AppScrollBehavior(),
        onPageChanged: (value) {
          pageIndex = value;
        },
        children: pages);

    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          const SizedBox(height: 30, width: 10),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(flex: 1, child: SizedBox()),
                Image.asset('images/logo_v2.png', width: 100, height: 100),
                const Expanded(flex: 6, child: SizedBox()),
                /*TextLink("Start", onPressed: () {
                  controller.animateToPage(0,
                      duration: const Duration(milliseconds: 1100),
                      curve: Curves.easeInOut);
                }),
                TextLink("Partner", onPressed: () {
                  controller.animateToPage(1,
                      duration: const Duration(milliseconds: 1100),
                      curve: Curves.easeInOut);
                }),
                TextLink("Bring", onPressed: () {
                  controller.animateToPage(2,
                      duration: const Duration(milliseconds: 1100),
                      curve: Curves.easeInOut);
                }),
                const Expanded(flex: 1, child: SizedBox()), */
              ]),
          Expanded(child: pageView),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(flex: 2, child: SizedBox()),
              MaterialButton(
                onPressed: () {
                  userExist.then((value) {
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
                  });
                },
                color: Colors.blue.shade900,
                // Darker color
                textColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0), // Less round
                ),
                elevation: 4,
                // Add a shadow effect
                child: const Text('Start'), // Changed the text to 'Start'
              ),
              const Expanded(flex: 2, child: SizedBox())
            ],
          ),
          /*FadeTransition(
              opacity: animation,
              child: Material(
                  color: const Color.fromRGBO(0, 0, 0, 0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Expanded(flex: 2, child: SizedBox()),
                        Container(
                            color: const Color.fromRGBO(0, 0, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text("More Info!"),
                                IconButton(
                                    iconSize: 50.0,
                                    hoverColor: const Color.fromRGBO(0, 0, 0, 0),
                                    onPressed: () {
                                      if (pages.length - 1 == pageIndex) {
                                        pageIndex = 0;
                                        controller.animateToPage(pageIndex,
                                            duration:
                                                const Duration(milliseconds: 1500),
                                            curve: Curves.easeInOut);
                                      } else {
                                        controller.nextPage(
                                            duration:
                                                const Duration(milliseconds: 1500),
                                            curve: Curves.easeInOut);
                                      }
                                    },
                                    icon:
                                        const Icon(Icons.arrow_circle_right_outlined))
                              ],
                            )),
                        const Expanded(flex: 2, child: SizedBox()),
                      ]))),*/
          const SizedBox(width: 10, height: 50)
        ]));
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
