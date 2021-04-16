import 'package:flutter/material.dart';
class Student extends StatefulWidget {
  @override
  _StudentState createState() => _StudentState();
}

class _StudentState extends State<Student> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Student information',
              style: TextStyle(
                  fontSize: 20.0, color: Colors.black87),
              textAlign: TextAlign.center,
            )));
  }
}
