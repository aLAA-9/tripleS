import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class Name3 extends StatefulWidget {
  @override
  _Name3State createState() => _Name3State();
}

class _Name3State extends State<Name3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              'Name3',
              style: TextStyle(
                  fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
              textAlign: TextAlign.center,
            )),
        body: Container(
            constraints: BoxConstraints.expand(),

            padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),


            child: GridView.count(
              padding: EdgeInsets.only(left: 0, right: 0, top: 40, bottom: 0),
              crossAxisCount: 2,


              children: <Widget>[
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    elevation: 9.0,
                    color: Colors.white54,
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/quiz3');
                        },
                        splashColor: Colors.blue[50],
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.rate_review_sharp,
                                color: Colors.lightBlue[800],
                                size: 55,
                              ),
                              Text('Quiz',
                                  textAlign: TextAlign.center,
                                  style: new TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: 'Satisfy',
                                      decorationThickness: 9.0)),
                            ]))),


                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    elevation: 9.0,
                    color: Colors.white54,
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/Exams3');
                        },
                        splashColor: Colors.blue[50],
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.text_snippet_outlined,
                                color: Colors.lightBlue[800],
                                size: 55,
                              ),
                              Text('Exams',
                                  style: new TextStyle(
                                      fontSize: 20.0, fontFamily: 'Satisfy')),
                            ]))),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    elevation: 9.0,
                    color: Colors.white54,
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/report3');
                        },
                        splashColor: Colors.blue[50],
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.warning_amber_rounded,
                                color: Colors.lightBlue[800],
                                size: 55,
                              ),
                              Text('Reports',
                                  style: new TextStyle(
                                      fontSize: 20.0, fontFamily: 'Satisfy')),
                            ]))),
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    elevation: 9.0,
                    color: Colors.white54,
                    margin: EdgeInsets.all(20.0),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/bank3');
                        },
                        splashColor: Colors.blue[50],
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.add_to_drive,
                                color: Colors.lightBlue[800],
                                size: 55,
                              ),
                              Text('Banks',
                                  style: new TextStyle(
                                      fontSize: 20.0, fontFamily: 'Satisfy')),
                            ]))),


              ]
              ,
            )));
  }
}