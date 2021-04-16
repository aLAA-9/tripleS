import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app7/main.dart';

//import 'package:flutter_students/screens/courses.dart';
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Smart Student System',
          style: TextStyle(
              fontSize: 20.0, fontFamily: 'Lobster', color: Colors.black87),
        ),
        elevation: 30,
        iconTheme: IconThemeData.fallback(),
        bottomOpacity: 10.0,
      ),
      drawer: Drawer(
        elevation: 0,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              margin: EdgeInsets.all(0.7),
              accountEmail: Text(
                'Student@std.mans.edu.eg',
                textAlign: TextAlign.end,
                style: TextStyle(color: Colors.black87),
              ),
              accountName: Text(
                'Student Name',
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w300,
                  height: 0.2,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/hii.png'),
              ),
              decoration: BoxDecoration(
                color: Colors.white60,
                backgroundBlendMode: BlendMode.softLight,
                shape: BoxShape.rectangle,
                image: DecorationImage(
                    image: AssetImage(
                      'images/hend4.jpg',
                    ),
                    scale: 0.6,
                    fit: BoxFit.contain,
                    alignment: Alignment.topRight),
              ),
            ),
            Divider(
              height: 10,
              thickness: 4,
              color: Colors.blueGrey,
              indent: 32,
              endIndent: 32,
            ),
            ListTile(
              leading:
                  Icon(Icons.person, size: 30, color: const Color(0xFF1565C0)),
              title: Text(
                'Student Info',
              ),
              onTap: () {
                Navigator.pushNamed(context, '/std');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 30.0,
                color: const Color(0xFF1565C0),
              ),
              title: Text('Home Page'),
            ),
            ListTile(
              leading: Icon(
                Icons.table_view,
                size: 30.0,
                color: const Color(0xFF1565C0),
              ),
              title: Text('Table'),
            ),
            ListTile(
              leading: Icon(Icons.notification_important_outlined,
                  size: 30, color: const Color(0xFF1565C0)),
              title: Text('Notification'),
            ),
            Divider(
              height: 10,
              thickness: 4,
              color: Colors.blueGrey,
              indent: 20,
              endIndent: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 30,
                color: const Color(0xFF1565C0),
              ),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 30,
                color: const Color(0xFF1565C0),
              ),
              title: Text('Log out'),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage(
              "https://media.istockphoto.com/photos/white-texture-background-picture-id926993450?k=6&m=926993450&s=612x612&w=0&h=HUGuMeDrbQMrskjA7euv6MKJ9F6LAQNTB8Yo6i34giA="),
          fit: BoxFit.fill,
        )),
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 6.0,
                color: Colors.white54,
                margin: EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/courses');
                    },
                    splashColor: Colors.blue[50],
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.import_contacts_sharp,
                            color: Colors.lightBlue[800],
                            size: 55,
                          ),
                          Text('Courses',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 20.0, fontFamily: 'Satisfy')),
                        ]))),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 9.0,
                color: Colors.white54,
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/online');
                    },
                    splashColor: Colors.blue[50],
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.laptop_chromebook,
                            color: Colors.lightBlue[800],
                            size: 55,
                          ),
                          Text(
                              'Online'
                              ' Session',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 20.0, fontFamily: 'Satisfy')),
                        ]))),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 9.0,
                color: Colors.white54,
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/quiz');
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
                          Text('Report & Quizes',
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
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/exams');
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
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/Exams Schedule');
                    },
                    splashColor: Colors.blue[50],
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.table_view_sharp,
                            color: Colors.lightBlue[800],
                            size: 55,
                          ),
                          Text(
                              'Exams '
                              'Schedule ',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 20.0, fontFamily: 'Satisfy')),
                        ]))),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                elevation: 9.0,
                color: Colors.white54,
                margin: EdgeInsets.all(10.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/results');
                    },
                    splashColor: Colors.blue[50],
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.text_snippet,
                            color: Colors.lightBlue[800],
                            size: 55,
                          ),
                          Text('Results',
                              style: new TextStyle(
                                  fontSize: 20.0, fontFamily: 'Satisfy')),
                        ]))),
          ],
        ),
      ),
    );
  }
}
