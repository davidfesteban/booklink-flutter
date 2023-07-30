import 'package:flutter/material.dart';

import '../../components/textheading.dart';
import '../../components/textsubline.dart';

class FirstLandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      TextHeading("Booklink"),
      TextSubline("Appointment everywhere")
      ]);
  }

}