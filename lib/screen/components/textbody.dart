import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextBody extends StatelessWidget {
  final String data;
  final Color color;
  final TextAlign textAlign;

  const TextBody(this.data, {this.color = Colors.black, this.textAlign = TextAlign.center}) : super();

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