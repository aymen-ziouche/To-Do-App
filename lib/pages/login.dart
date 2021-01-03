import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(131, 117, 226, 1),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Account\n Login",
                          style: TextStyle(
                            color: Color.fromRGBO(120, 124, 213, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,
                            letterSpacing: 2.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        TextFormField(
                          autofocus: false,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromRGBO(169, 167, 222, 1),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: 'Email',
                            contentPadding: const EdgeInsets.only(
                                left: 5.0, right: 5.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        TextFormField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          autofocus: false,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Color.fromRGBO(203, 199, 255, 1),
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.transparent,
                            hintText: 'Password',
                            contentPadding: const EdgeInsets.only(
                                left: 5.0, right: 5.0, bottom: 8.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(25.7),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Spacer(
                              flex: 1,
                            ),
                            FlatButton(
                              onPressed: () {},
                              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: Text(
                                "Forgot?",
                                style: TextStyle(
                                  color: Color.fromRGBO(203, 199, 255, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  letterSpacing: 1.5,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 50),
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
                              "SIGN IN",
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
                      )))
                ])));
  }
}
