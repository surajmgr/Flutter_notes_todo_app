import 'package:flutter/material.dart';
import 'package:todo_app/pages/homepg.dart';
import 'package:todo_app/pages/homepg2.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ToDo App Practice",
      home: const HomePage(),
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              // bodyColor: Color(0xFF8E43E7),
              bodyColor: Colors.white,
              displayColor: Colors.white,
            ),
      ),
    );
  }
}
