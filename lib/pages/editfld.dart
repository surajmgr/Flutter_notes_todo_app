import 'package:flutter/material.dart';
import 'package:todo_app/widgets/AppbarText.dart';

class EditField extends StatefulWidget {
  const EditField({Key? key}) : super(key: key);

  @override
  State<EditField> createState() => _EditFieldState();
}

class _EditFieldState extends State<EditField> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            icon: const Icon(
              Icons.auto_awesome,
              size: 25,
              //semanticLabel: "Menu",
            ),
          ),
        ),
        title: const AppBarTxt(txt: "Edit"),
        backgroundColor: const Color(0xFF0B0D0E),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_sharp),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
