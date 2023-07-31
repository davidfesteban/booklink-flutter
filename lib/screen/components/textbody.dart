import 'package:flutter/material.dart';

class TextBody extends StatelessWidget {
  final String data;
  final Color color;
  final TextAlign textAlign;

  const TextBody(this.data, {super.key, this.color = Colors.black, this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    return Align(
        child: DefaultTextStyle(
          textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: 10
      ),
      child: Text(data),
    ));
  }
}