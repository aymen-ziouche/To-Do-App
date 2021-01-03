import 'package:flutter/material.dart';
import 'package:my_app/pages/signupPages/signup_page1.dart';
import 'package:my_app/pages/signupPages/signup_page2.dart';
import 'package:my_app/pages/signupPages/signup_page3.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(131, 117, 226, 1),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: PageView(
          controller: PageController(initialPage: 0),
          children: [Page1(), Page2(), Page3()],
        ));
  }
}
