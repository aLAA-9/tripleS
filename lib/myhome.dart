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
                'Department',
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
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHBqsziWUqtTXPe3pU-qqrGJhUHrxFH7klw&usqp=CAU'),
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
        padding: EdgeInsets.only(left: 0,right: 0,top:40,bottom: 0),


        child: GridView.count(
          padding: EdgeInsets.only(left: 0,right: 0,top: 40,bottom: 0),
          crossAxisCount: 2,




          children: <Widget>[
            Card(
                shape: RoundedRectangleBorder(

                    borderRadius: BorderRadius.circular(25.0)),
                elevation: 6.0,
                color: Colors.white54,
                margin: EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/AllSubjects');
                    },
                    splashColor: Colors.blue[50],
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.import_contacts_sharp,
                            color: Colors.lightBlue[800],
                            size: 57,
                          ),
                          Text('All Subjects',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 20.0, fontFamily: 'Satisfy')),
                        ]))),
            Card(

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                elevation: 6.0,
                color: Colors.white54,
                margin: EdgeInsets.all(15.0),
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
                    borderRadius: BorderRadius.circular(25.0)),
                elevation: 9.0,

                color: Colors.white54,
                margin: EdgeInsets.all(15.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/Exams '
                          'Tables');
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
                              'Tables ',
                              textAlign: TextAlign.center,
                              style: new TextStyle(
                                  fontSize: 20.0, fontFamily: 'Satisfy')),
                        ]))),
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0)),
                elevation: 9.0,
                color: Colors.white54,
                margin: EdgeInsets.all(15.0),
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
                          Text('Final Results',
                              style: new TextStyle(
                                  fontSize: 20.0, fontFamily: 'Satisfy')),
                        ]))),
          ],
        ),
      ),
    );
  }
}
