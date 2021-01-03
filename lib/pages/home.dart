import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(131, 117, 226, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 70.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 47.0,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/icon.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Hi there\nI'm Reflectly",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "I'll help you finish your daily tasks",
                    style: TextStyle(
                      color: Color.fromRGBO(203, 199, 255, 1),
                      height: 1.4,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
              child: Center(
                child: Column(
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/todo');
                      },
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text(
                        "To Do!",
                        style: TextStyle(
                          color: Color.fromRGBO(131, 117, 226, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(60, 20, 60, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text(
                        "HI, REFLECTLY!",
                        style: TextStyle(
                          color: Color.fromRGBO(131, 117, 226, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: Text(
                        "I ALREADY HAVE AN ACCOUNT",
                        style: TextStyle(
                          color: Color.fromRGBO(203, 199, 255, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
