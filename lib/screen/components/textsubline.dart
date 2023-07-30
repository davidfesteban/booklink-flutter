import 'package:flutter/material.dart';

class TextSubline extends StatelessWidget {
  final String data;
  final Color color;
  final TextAlign textAlign;

  const TextSubline(this.data, {this.color = Colors.black, this.textAlign = TextAlign.center}) : super();

  @override
  Widget build(BuildContext context) {
    return Align(
        child: DefaultTextStyle(
          textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: 30
      ),
      child: Text(data),
    ));
  }
}
