import 'dart:ui';

import 'package:flutter/material.dart';

class TaskCardWidget extends StatelessWidget {
  final String title;
  final String desc;

  TaskCardWidget({this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 24.0),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title ?? "(Unnamed Task)",
            style: TextStyle(
                color: Color.fromRGBO(120, 124, 213, 1),
                fontSize: 20.0,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              desc ?? "No Description Added",
              style: TextStyle(
                color: Color.fromRGBO(203, 199, 255, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                height: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
