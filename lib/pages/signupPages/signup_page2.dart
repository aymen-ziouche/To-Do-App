import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  @override
  _page2State createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(131, 117, 226, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "Account\n Signup",
                    style: TextStyle(
                      color: Color.fromRGBO(120, 124, 213, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0,
                      letterSpacing: 2.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    autofocus: false,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Color.fromRGBO(169, 167, 222, 1),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.transparent,
                      hintText: 'Your Email',
                      contentPadding: const EdgeInsets.only(
                          left: 5.0, right: 5.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 50),
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
                        "Continue",
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
