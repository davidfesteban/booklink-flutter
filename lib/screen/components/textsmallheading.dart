import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextSmallHeading extends StatelessWidget {
  final String data;
  final Color color;
  final TextAlign textAlign;

  const TextSmallHeading(this.data, {this.color = Colors.black, this.textAlign = TextAlign.center}) : super();

  @override
  Widget build(BuildContext context) {
    return Align(
        child: DefaultTextStyle(
          textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: 15,
        fontWeight: FontWeight.bold
      ),
      child: Text(data, textAlign:  textAlign),
    ));
  }
}