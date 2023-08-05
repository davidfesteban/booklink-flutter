import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen>
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
    )..repeat(reverse: true);

    final Animation<double> _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.elasticOut,
    );

    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Expanded(flex: 1, child: SizedBox()),
          RotationTransition(
              turns: _animation,
              child:
                  Image.asset('images/logo_v2.png', width: 200, height: 200)),
          SizedBox(width: 1, height: 50),
          SpinKitWave(color: Colors.black, size: 20),
          Expanded(flex: 1, child: SizedBox())
        ]));
  }
}
