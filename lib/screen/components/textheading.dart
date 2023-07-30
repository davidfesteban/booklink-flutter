import 'package:flutter/material.dart';

class TextHeading extends StatelessWidget {
  final String data;
  final Color color;

  const TextHeading(this.data, {this.color = Colors.black}) : super();

  @override
  Widget build(BuildContext context) {
    return Align(
        child: DefaultTextStyle(
      style: TextStyle(
        color: color,
        fontSize: 50
      ),
      child: Text(data),
    ));
  }
}
