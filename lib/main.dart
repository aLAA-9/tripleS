import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app7/allsubjects/Name2.dart';
import 'package:flutter_app7/allsubjects/Name3.dart';
import 'package:flutter_app7/allsubjects/Name4.dart';
import 'package:flutter_app7/allsubjects/name1.dart';
import 'package:flutter_app7/banks/bank2.dart';
import 'package:flutter_app7/banks/bank4.dart';
import 'package:flutter_app7/drawer/std.dart';
import 'package:flutter_app7/exams/Exams2.dart';
import 'package:flutter_app7/exams/Exams3.dart';
import 'package:flutter_app7/exams/Exams4.dart';
import 'package:flutter_app7/loading.dart';
import 'package:flutter_app7/main_splash_scrseen.dart';
import 'package:flutter_app7/myhome.dart';
import 'package:flutter_app7/quiz/quiz.dart';
import 'package:flutter_app7/quiz/quiz2.dart';
import 'package:flutter_app7/quiz/quiz3.dart';
import 'package:flutter_app7/quiz/quiz4.dart';
import 'package:flutter_app7/reports/report1.dart';
import 'package:flutter_app7/reports/report2.dart';
import 'package:flutter_app7/reports/report3.dart';
import 'package:flutter_app7/reports/report4.dart';
import 'package:flutter_app7/screens/Tables.dart';
import 'package:flutter_app7/screens/allsubjects.dart';
import 'package:flutter_app7/screens/online.dart';

import 'package:flutter_app7/screens/results.dart';


import 'banks/Banks.dart';
import 'banks/bank3.dart';
import 'exams/exams.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "MainSplashScreen",
        routes: {
          'LoginScreen': (context) => LoginScreen(),
          'myHome': (context) => MyHome(),
          '/AllSubjects': (context) => AllSubjects(),
          '/online': (context) => OnLine(),
          '/exams': (context) => Exams(),
          '/Exams2': (context) => Exams2(),
          '/Exams3': (context) => Exams3(),
          '/Exams4': (context) => Exams4(),
          '/quiz': (context) => Quiz(),
          '/quiz2': (context) => Quiz2(),
          '/quiz3': (context) => Quiz3(),
          '/quiz4': (context) => Quiz4(),
          '/results': (context) => Results(),
          '/Exams '
              'Tables': (context) => Tables(),
          '/std': (context) => Student(),
          '/Name1': (context) => Name1(),
          '/Name2': (context) => Name2(),
          '/Name3': (context) => Name3(),
          '/Name4': (context) => Name4(),
          '/Banks': (context) => Banks(),
          '/bank2': (context) => Bank2(),
          '/bank3': (context) => Bank3(),
          '/bank4': (context) => Bank4(),
          '/report1': (context) => Report1(),
          '/report2': (context) => Report2(),
          '/report3': (context) => Report3(),
          '/report4': (context) => Report4(),



    },
        home:MainSplashScreen(),
   );

  }
}

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  bool loading = false;
  String _email, _password;
  Login() async {
    final formdata = globalKey.currentState;
    if (formdata.validate()) {
      formdata.save();
      setState(() => loading = true);
    }
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHome()));
      print('done');
    } catch (e) {
      print(e);
    }
  }

  @override
  @override
  Widget build(BuildContext context) {
    return loading
        ? Loading()
        : Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/aaa.jpg'),
                  fit: BoxFit.cover,
                )),
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
            child: Form(
                key: globalKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/hend2.jpg'),
                      ),
                      Text('كلية الهندسة جامعة المنصورة',
                          style: TextStyle(
                            fontFamily: 'Lobster',
                            fontSize: 15.0,
                          )),
                      Text('smart student system',
                          style: TextStyle(
                            fontFamily: 'Lobster',
                            fontSize: 27.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          )),
                      Text(' We are Here For You 😊 ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      SizedBox(height: 20.0),
                      TextFormField(
                        onSaved: (String value) {
                          _email = value;
                        },
                        decoration: InputDecoration(
                          suffixIcon: Icon(Icons.person),
                          hintText: 'ID',
                          fillColor: Colors.white38,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white,
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.lightBlue,
                                width: 1.0,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(60),
                          ),
                        ),
                        validator: (val) =>
                        val.isEmpty ? 'Enter your ID ' : null,
                        obscureText: false,
                      ),
                      SizedBox(height: 20.0),
                      TextFormField(
                        onSaved: (String value) {
                          _password = value;
                        },
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.visibility_off),
                            hintText: 'password',
                            fillColor: Colors.white38,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(60),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.lightBlue,
                                  width: 1.0,
                                  style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(60),
                            )),
                        validator: (val) =>
                        val.length < 5 ? ' Enter a password   ' : null,
                        obscureText: true,
                      ),
                      SizedBox(height: 60.0),
                      RaisedButton(
                          color: Colors.blue[100],
                          onPressed: Login,
                          child: Text('Login',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Lobster',
                                fontSize: 20.0,
                              )))
                    ]))));
  }
}