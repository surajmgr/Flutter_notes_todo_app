import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/widgets/BodyElement.dart';
import 'package:todo_app/widgets/FltAccBtn.dart';
import 'package:todo_app/widgets/MyDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [],
    );
  }

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
        backgroundColor: const Color(0xFF131617),
        // backgroundColor: Colors.transparent,
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
          backgroundColor: Color(0xFF0B0D0E),
          elevation: 0.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search_sharp),
            )
          ],
        ),
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
        drawer: const MyDrawer(),
        floatingActionButton: const fltAcBtn(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
