import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app7/main.dart';


class MainSplashScreen extends StatefulWidget {
  @override
  _MainSplashScreenState createState() => _MainSplashScreenState();
}

class _MainSplashScreenState extends State<MainSplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Student System',
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(

          splash: Image.asset('images/hend2.jpg'),

          nextScreen: LoginScreen(),
          splashIconSize: 250,
          backgroundColor: Colors.white,
          splashTransition: SplashTransition.scaleTransition,
          duration: 1500,
          ),
    );



  }
}

