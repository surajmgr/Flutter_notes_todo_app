import 'package:flutter/material.dart';
import 'package:todo_app/widgets/BodyElement.dart';
import 'package:todo_app/widgets/MyDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/bg3.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
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
          title: const Text(
            "One Day List",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_sharp),
            )
          ],
        ),
        body: const Center(
          child: BodyElm(),
        ),
        drawer: const MyDrawer(),
        floatingActionButton: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/plus2.png"),
            ),
          ),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
