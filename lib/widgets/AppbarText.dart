import 'package:flutter/material.dart';

class AppBarTxt extends StatelessWidget {
  const AppBarTxt({
    Key? key,
    required this.txt,
  }) : super(key: key);

  final String txt;

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
