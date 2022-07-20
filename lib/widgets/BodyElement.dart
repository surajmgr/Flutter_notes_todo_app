import 'package:flutter/material.dart';

class BodyElm extends StatefulWidget {
  const BodyElm({Key? key}) : super(key: key);

  @override
  State<BodyElm> createState() => _BodyElmState();
}

class _BodyElmState extends State<BodyElm> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            // SizedBox(
            //   height: Scaffold.of(context).appBarMaxHeight,
            // ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: Text(
                "Hello, Coders!",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Alex Brush',
                  fontSize: 50,
                  //backgroundColor: Colors.amberAccent,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
              child: Text(
                "This is your todo-list,\nToday, you have 5 tasks to complete.",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Edu VIC',
                  fontSize: 19,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                    color: Colors.white12,
                    child: Container(
                      height: 300,
                      width: 300,
                      child: const ListTile(
                        title: Text(
                          "Game",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.amberAccent,
                            fontFamily: 'Edu VIC',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          "A game is a structured form of play, usually undertaken for entertainment or fun, and sometimes used as an educational tool. Games are different from work, which is usually carried out for remuneration, and from art, which is more often an expression of aesthetic or ideological elements.",
                          style: TextStyle(
                            color: Colors.lightGreenAccent,
                            fontFamily: 'Edu VIC',
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              color: Colors.white12,
              child: Container(
                height: 65,
                width: 300,
                child: const ListTile(
                  title: Text(
                    "Sports",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontFamily: 'Edu VIC',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "A game is a structured form of play...",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Edu VIC',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              color: Colors.white12,
              child: Container(
                height: 65,
                width: 300,
                child: const ListTile(
                  title: Text(
                    "Books",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontFamily: 'Edu VIC',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    "A game is a structured form of play...",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Edu VIC',
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "End of the list.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Edu VIC',
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
