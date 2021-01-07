import 'package:flutter/material.dart';
import 'package:my_app/pages/Todo.dart';
import 'package:my_app/pages/login.dart';
import 'package:my_app/pages/taskpage.dart';
import 'pages/home.dart';
import 'pages/signup.dart';

void main() => runApp(MaterialApp(
      routes: {
        '/': (context) => Home(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup(),
        '/todo': (context) => Todo(),
        '/taskpage': (context) => Taskpage()
      },
    ));
