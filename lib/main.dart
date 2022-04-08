import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Auth/BaseLogin.dart';
import 'package:hsapp2/Views/StatelessWidgets/SplashScreen.dart';
import 'Views/StatefulWidgets/Auth/Login.dart';
import 'Views/StatefulWidgets/Others/HomeWidget.dart';

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
        '/HomeWidget': (BuildContext context) => const HomeWidget(title: 'Nav Widget'),

      },
    );
  }
}


