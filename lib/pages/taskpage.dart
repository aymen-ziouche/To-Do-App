import 'package:flutter/material.dart';
import 'package:my_app/widget.dart';

class Taskpage extends StatefulWidget {
  @override
  _TaskpageState createState() => _TaskpageState();
}

class _TaskpageState extends State<Taskpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0, bottom: 6.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image(
                                image:
                                    AssetImage('assets/back_arrow_icon.png')),
                          ),
                        ),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Task Title",
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(203, 199, 255, 1),
                          ),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter Description for the task..",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 24.0)),
                    ),
                  ),
                  ToDoWidget(),
                ],
              ),
              Positioned(
                bottom: 24.0,
                right: 24.0,
                child: Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFFE3577),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Image(
                    image: AssetImage(
                      "assets/delete_icon.png",
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

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
