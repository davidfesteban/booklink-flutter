import 'package:flutter/material.dart';

import '../widgets/custom_tab_bar/custom_tab_bar_controller.dart';
import '../widgets/fade_in_out_widget/fade_in_out_widget_controller.dart';

class AddFlightPageController {
  late CustomTabBarController customTabBarController;
  late ValueNotifier<int> pageNotifier;
  late FadeInOutWidgetController fadeInOutWidgetController;

  void nextTab() {
    if (!customTabBarController.isLastTab) {
      fadeInOutWidgetController.hide();
      customTabBarController.nextTab();
      Future.delayed(
        const Duration(milliseconds: 500),
        () => pageNotifier.value = customTabBarController.currentIndex,
      ).whenComplete(
        () {
          fadeInOutWidgetController.show();
        },
      );
    }
  }
}
