// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:todo_app/models/globalval.dart';
import 'package:todo_app/pages/editfld.dart';
import 'package:todo_app/widgets/FltAccBtn.dart';

class BodyElm extends StatefulWidget {
  const BodyElm({Key? key}) : super(key: key);
  @override
  State<BodyElm> createState() => _BodyElmState();
}

class _BodyElmState extends State<BodyElm> {
  refresh() {
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // fltAcBtn(notifyBody: refresh());
  }

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
              Center(
                child: Column(
                  children: [
                    ListView.builder(
                      itemBuilder: (context, index) {
                        return cardList[index];
                      },
                      itemCount: cardList.length,
                      shrinkWrap: true,
                      // padding: EdgeInsets.all(5),
                      scrollDirection: Axis.vertical,
                      primary: false,
                    ),
                    // const MainCard(),
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
                          child: ListTile(
                            title: const Text(
                              "Sports",
                              style: TextStyle(
                                fontFamily: 'Edu VIC',
                                fontSize: 25,
                              ),
                            ),
                            subtitle: const Text(
                              "A game is a structured form of play...\n",
                              style: TextStyle(
                                color: Colors.white70,
                                fontFamily: 'Edu VIC',
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                cardList.add(MainCard(
                                    heading: headingCard[0],
                                    bodyV: bodyCard[0]));
                                print(cardList.length);
                              });
                            },
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
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "End of the List!",
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

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.heading,
    required this.bodyV,
  }) : super(key: key);

  final String heading;
  final String bodyV;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          child: ListTile(
            // secondary: const Icon(Icons.beach_access),
            title: Text(
              heading,
              style: const TextStyle(
                // decoration: TextDecoration.underline,
                // color: Colors.amberAccent,
                fontFamily: 'EDU VIC',
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              "$bodyV\n",
              style: const TextStyle(
                color: Colors.white70,
                fontFamily: 'Edu VIC',
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EditField()),
              );
            },
          ),
        ),
      ),
    );
  }
}
