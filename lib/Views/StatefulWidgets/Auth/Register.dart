import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key, String title = "Register"}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

     return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(200, 10, 15, 19),
              title: const Text("Sign Up"),
              leading: new IconButton(onPressed: () {
                Navigator.pop(context);
              },
                icon: new Icon(Icons.arrow_back),),
            ),
         body: SafeArea(
           child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  width: ScreenWidth/2,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),

                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     DefaultTextStyle(
                         style: TextStyle(
                           fontWeight: FontWeight.w500,
                         ),
                         child: Text("Full Names")
                     ),
                     TextFormField(
                       decoration: InputDecoration(

                         hintText: 'Enter full names',

                       ),
                     ),
                   ],
                 ),
                ),
              ],
            ),
          ),
         )
      )
    );
  }
}
