import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Title extends StatelessWidget {
  final String text;
  final int size;
  final Color colors;
  final FontWeight weight;

  const Title(
      {super.key,
      required this.text,
      required this.size,
      required this.colors,
      required this.weight});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 16),
    );
  }
}
