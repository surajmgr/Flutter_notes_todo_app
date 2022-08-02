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
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 16.0, 32.0, 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello, Coders!",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Alex Brush',
                        fontSize: 50,
                        //backgroundColor: Colors.amberAccent,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "This is your todo-list, Today, you have 5 tasks to complete.",
                      style: TextStyle(
                        color: Colors.white70,
                        fontFamily: 'Edu VIC',
                        fontSize: 19,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 28, 40, 0),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: Colors.white12,
                          child: Container(
                            // height: 300,
                            // width: 300,
                            child: const ListTile(
                              // secondary: const Icon(Icons.beach_access),
                              title: Text(
                                "Game",
                                style: TextStyle(
                                  // decoration: TextDecoration.underline,
                                  // color: Colors.amberAccent,
                                  fontFamily: 'EDU VIC',
                                  fontSize: 28,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              subtitle: Text(
                                "A game is a structured form of play, usually undertaken for entertainment or fun, and sometimes used as an educational tool. Games are different from work, which is usually carried out for remuneration, and from art, which is more often an expression of aesthetic or ideological elements.\n",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Edu VIC',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 15, 40, 0),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: Colors.white12,
                          child: Container(
                            // height: 65,
                            // width: 300,
                            child: const ListTile(
                              title: Text(
                                "Sports",
                                style: TextStyle(
                                  fontFamily: 'Edu VIC',
                                  fontSize: 25,
                                ),
                              ),
                              subtitle: Text(
                                "A game is a structured form of play...\n",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Edu VIC',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(40, 15, 40, 0),
                        child: Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                          ),
                          color: Colors.white12,
                          child: Container(
                            // height: 65,
                            // width: 300,
                            child: const ListTile(
                              title: Text(
                                "Books",
                                style: TextStyle(
                                  fontFamily: 'Edu VIC',
                                  fontSize: 25,
                                ),
                              ),
                              subtitle: Text(
                                "A game is a structured form of play...\n",
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontFamily: 'Edu VIC',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "End of the list.",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Edu VIC',
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
