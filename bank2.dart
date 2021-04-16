import 'package:flutter/material.dart';

class Bank2 extends StatefulWidget {
  @override
  _Bank2State createState() => _Bank2State();
}

class _Bank2State extends State<Bank2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Bank2',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
              textAlign: TextAlign.center,
            )));
  }
}