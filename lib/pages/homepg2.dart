import 'package:flutter/material.dart';
import 'package:todo_app/widgets/BodyElement.dart';

class HomePageS extends StatefulWidget {
  const HomePageS({Key? key}) : super(key: key);

  @override
  State<HomePageS> createState() => _HomePageSState();
}

class _HomePageSState extends State<HomePageS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg5.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Card(
              elevation: 0,
              color: Colors.transparent,
              child: Container(
                //alignment: Alignment.topLeft,
                // width: MediaQuery.of(context).size.width * (17 / 20),
                height: MediaQuery.of(context).size.height - 10,
                child: const BodyElm(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
