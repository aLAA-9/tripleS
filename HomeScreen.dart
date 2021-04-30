import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tables'),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 0),
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 3.0, bottom: 0),
              height: 50,
              color: Colors.white54,
              child: Text(
                'Tuesday ,27/4/2021',
                style: TextStyle(fontSize: 20),
              ),
              padding: EdgeInsets.only(left: 60, top: 15),
            ),
            Divider(
              height: 1,
              color: Colors.black87,
            ),
            Container(
              height: 100,
              margin: EdgeInsets.only(top: 0.177),
              color: Colors.white12,
              child:GridView.count(
                padding: EdgeInsets.only(left: 0, right: 0, top: 10, bottom: 0),
                crossAxisCount: 1,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 5.0,
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(10.0),
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blue[50],
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Sat',
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                        fontSize: 20.0, fontFamily: 'Satisfy')),
                              ]))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 6.0,
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(10.0),
                      child: InkWell(

                          onTap: () {},
                          splashColor: Colors.blue[50],
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Sun',
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                        fontSize: 20.0, fontFamily: 'Satisfy')),
                              ]))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 9.0,
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(10.0),
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blue[50],
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Mon ',
                                    textAlign: TextAlign.center,
                                    style: new TextStyle(
                                        fontSize: 20.0, fontFamily: 'Satisfy')),
                              ]))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 9.0,
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(10.0),
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blue[50],
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Tus',
                                    style: new TextStyle(
                                        fontSize: 20.0, fontFamily: 'Satisfy')),
                              ]))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 9.0,
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(10.0),
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blue[50],
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Wen',
                                    style: new TextStyle(
                                        fontSize: 20.0, fontFamily: 'Satisfy')),
                              ]))),
                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0)),
                      elevation: 9.0,
                      color: Colors.lightBlue,
                      margin: EdgeInsets.all(10.0),
                      child: InkWell(
                          onTap: () {},
                          splashColor: Colors.blue[50],
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text('Thr',
                                    style: new TextStyle(
                                        fontSize: 20.0, fontFamily: 'Satisfy')),
                              ]))),
                ],),),
            Divider(
              height: 1,
              color: Colors.black87,
            )
          ],
        ),
      ),
    );}}
