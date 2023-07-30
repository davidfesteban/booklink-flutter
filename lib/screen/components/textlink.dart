import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  final String data;
  final Color color;
  final TextAlign textAlign;
  final Function()? onPressed;
  final Function()? onHover;

  const TextLink(this.data,
      {this.color = Colors.black,
      this.onPressed,
      this.onHover,
      this.textAlign = TextAlign.center})
      : super();

  @override
  Widget build(BuildContext context) {
    return Align(
      child: TextButton(
        onPressed: onPressed,
        child: Text(data, style: TextStyle(color: color, fontSize: 15)),
      ),
    );
  }
}
