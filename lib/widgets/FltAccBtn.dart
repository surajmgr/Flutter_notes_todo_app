import 'package:flutter/material.dart';

class fltAcBtn extends StatelessWidget {
  const fltAcBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Color.fromARGB(190, 12, 12, 12),
      child: const Center(
        child: Icon(
          Icons.add,
          size: 35.0,
        ),
      ),
    );
  }
}
