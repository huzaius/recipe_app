import 'package:flutter/material.dart';

Widget textNormal([
  final String? text,
  final double? size,
  final Color? color,
]) {
  return Text(
    text!,
    style: TextStyle(
      fontSize: size,
      fontWeight: FontWeight.normal,
      color: color,
    ),
  );
}

Widget textBold([final String? text, final double? size, final Color? color]) {
  return Text(
    text!,
    style: TextStyle(fontSize: size, fontWeight: FontWeight.bold, color: color),
  );
}

Widget textVaryingWeight([
  final String? text,
  final double? size,
  final FontWeight? weight,
  final Color? color,
]) {
  return Text(
    text!,
    style: TextStyle(fontSize: size, fontWeight: weight, color: color),
  );
}
