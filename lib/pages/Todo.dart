import 'package:flutter/material.dart';
import 'package:my_app/widget.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(131, 117, 226, 1),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: [
                            Text(
                              "TO DO!",
                              style: TextStyle(
                                color: Color.fromRGBO(120, 124, 213, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 50.0,
                                letterSpacing: 2.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 20),
                            // The Cards
                            TaskCardWidget(
                              title: "Get Started!",
                              desc: "A description",
                            ),
                            TaskCardWidget(),
                            TaskCardWidget(),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, bottom: 1),
                            child: Center(
                                child: Column(
                              children: [
                                FlatButton(
                                  onPressed: () {},
                                  color: Colors.white,
                                  padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  child: Text(
                                    "To Do",
                                    style: TextStyle(
                                      color: Color.fromRGBO(131, 117, 226, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      letterSpacing: 1.5,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ))),
                      )
                    ])),
          ],
        ));
  }
}
