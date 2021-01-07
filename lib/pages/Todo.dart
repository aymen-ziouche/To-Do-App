import 'package:flutter/material.dart';
import 'package:my_app/pages/taskpage.dart';
import 'package:my_app/widget.dart';

class Todo extends StatefulWidget {
  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(131, 117, 226, 1),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          color: Color.fromRGBO(131, 117, 226, 1),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(
                        top: 32.0,
                        bottom: 32.0,
                      ),
                      child: Center(
                        child: Text(
                          'To Do',
                          style: TextStyle(
                            color: Color.fromRGBO(120, 124, 213, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 50.0,
                            letterSpacing: 2.0,
                          ),
                        ),
                      )),
                  Expanded(
                      child: ScrollConfiguration(
                    behavior: NoGlowBehaviour(),
                    child: ListView(
                      children: [
                        TaskCardWidget(
                          title: "Get Started",
                          desc: "just a description",
                        ),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                        TaskCardWidget(),
                      ],
                    ),
                  )),
                ],
              ),
              Spacer(flex: 1),
              Positioned(
                bottom: 24.0,
                child: Center(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Taskpage()));
                    },
                    color: Color.fromRGBO(131, 117, 226, 1),
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Text(
                      "Add!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        letterSpacing: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


// scafold => safearea => container => stack => column and postioned inside stack => listview and logo inside container => 