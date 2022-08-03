import 'package:flutter/material.dart';
import 'package:todo_app/models/globalval.dart';
import 'package:todo_app/widgets/BodyElement.dart';

class fltAcBtn extends StatefulWidget {
  const fltAcBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<fltAcBtn> createState() => _fltAcBtnState();
}

class _fltAcBtnState extends State<fltAcBtn> {
  @override
  Widget build(BuildContext context) {
    void addCardWidget() {
      setState(() {
        cardList.add(MainCard(heading: headingCard[0], bodyV: bodyCard[0]));
        // widget.notifyBody();
        print(cardList.length);
      });
    }

    final len = cardList.length;

    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              backgroundColor: Color(0xff0b0d0e),
              title: Text(
                "Add",
                // style: TextStyle(color: Colors.black87),
              ),
              content: Text("data"),
            );
          },
        );
        addCardWidget();
      },
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
