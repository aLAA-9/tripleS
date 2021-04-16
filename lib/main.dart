import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app7/drawer/std.dart';
import 'package:flutter_app7/loading.dart';
import 'package:flutter_app7/myhome.dart';
import 'package:flutter_app7/screens/courses.dart';
import 'package:flutter_app7/screens/exams.dart';
import 'package:flutter_app7/screens/examsschedule.dart';
import 'package:flutter_app7/screens/online.dart';
import 'package:flutter_app7/screens/quiz.dart';
import 'package:flutter_app7/screens/results.dart';

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
        initialRoute: 'LoginScreen',
        routes: {
          'LoginScreen': (context) => LoginScreen(),
          'myHome': (context) => MyHome(),
          '/courses': (context) => Courses(),
          '/online': (context) => OnLine(),
          '/exams': (context) => Exams(),
          '/quiz': (context) => Quizes(),
          '/results': (context) => Results(),
          '/Exams Schedule': (context) => ExamsSchedule(),
          '/std': (context) => Student(),
        });
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
