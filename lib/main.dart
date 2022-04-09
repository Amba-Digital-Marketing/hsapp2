import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Auth/BaseLogin.dart';
import 'package:hsapp2/Views/StatelessWidgets/SplashScreen.dart';
import 'Views/StatefulWidgets/Auth/FinishSignUp.dart';
import 'Views/StatefulWidgets/Auth/Login.dart';
import 'Views/StatefulWidgets/Auth/OtpScreen.dart';
import 'Views/StatefulWidgets/Auth/PinScreen.dart';
import 'Views/StatefulWidgets/Auth/Register.dart';
import 'Views/StatefulWidgets/Others/HomeWidget.dart';
import 'Views/StatelessWidgets/TermsAndConditions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H&S Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white
      ),
      home: const SplashScreen(title: 'Splash Screen'),

      //Routes throughout the Application
      routes: <String, WidgetBuilder> {
        '/splashScreen': (BuildContext context) => const SplashScreen(title: 'Splash Screen'),
        '/BaseLogin': (BuildContext context) => const BaseLogin(title: 'Base Login'),
        '/Login': (BuildContext context) => const Login(title: 'Login'),
        '/FinishSignUp': (BuildContext context) => const FinishSignUp(title: 'FinishSignUp'),
        '/Register': (BuildContext context) => const Register(title: 'Register'),
        '/TermsAndConditions': (BuildContext context) => const TermsAndConditions(title: 'TermsAndConditions'),
        '/OtpScreen': (BuildContext context) => const OtpScreen(title: 'Otp Screen'),
        '/PinScreen': (BuildContext context) => const PinScreen(title: 'Otp Screen'),
        '/HomeWidget': (BuildContext context) => const HomeWidget(title: 'Nav Widget'),

      },
    );
  }
}


