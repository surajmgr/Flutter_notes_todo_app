import 'package:flutter/material.dart';

class BodyElm extends StatefulWidget {
  const BodyElm({Key? key}) : super(key: key);

  @override
  State<BodyElm> createState() => _BodyElmState();
}

class _BodyElmState extends State<BodyElm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Scaffold.of(context).appBarMaxHeight,
        ),
        Column(
          children: const [
            CircleAvatar(
              foregroundImage: AssetImage("assets/plus.png"),
            ),
          ],
        ),
      ],
    );
  }
}
