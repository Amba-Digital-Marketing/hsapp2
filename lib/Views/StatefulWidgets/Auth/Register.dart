import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key, String title = "Register"}) : super(key: key);


  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  Color navyBlue = const Color.fromARGB(255, 7, 2, 33);

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context). size. width;
    double ScreenHeight = MediaQuery.of(context). size. height;

     return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: navyBlue,
              title: const Text("Sign Up"),
              centerTitle: true,
              leading: new IconButton(onPressed: () {
                Navigator.pop(context);
              },
                icon: new Icon(Icons.arrow_back),),
            ),
         body: SafeArea(
           child: Container(
             width: ScreenWidth,
             height: ScreenHeight,
            margin: EdgeInsets.only(top: 50),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  width: 280,
                 padding: EdgeInsets.all(10),
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                   boxShadow: [
                     BoxShadow(
                       color: Colors.grey.withOpacity(0.1),
                       blurRadius: 1.0,
                       offset: Offset(0, 1),
                     ),

                   ]

                 ),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     DefaultTextStyle(
                         style: TextStyle(
                           fontWeight: FontWeight.w500,
                           color: Colors.red
                         ),
                         child: Text("Full Names")
                     ),
                     TextFormField(
                       decoration: InputDecoration(
                         hintText: 'Enter full names',

                       ),
                     ),
                     SizedBox(height: 3,),

                     DefaultTextStyle(
                         style: TextStyle(
                             fontWeight: FontWeight.w500,
                             color: Colors.red
                         ),
                         child: Text("Email")
                     ),
                     TextFormField(
                       decoration: InputDecoration(
                         hintText: 'Enter Email',

                       ),
                     ),
                     SizedBox(height: 3,),

                     DefaultTextStyle(
                         style: TextStyle(
                             fontWeight: FontWeight.w500,
                             color: Colors.red
                         ),
                         child: Text("Password")
                     ),
                     TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                         hintText: 'Enter password',

                       ),
                     ),
                     SizedBox(height: 3,),

                     DefaultTextStyle(
                         style: TextStyle(
                             fontWeight: FontWeight.w500,
                             color: Colors.red
                         ),
                         child: Text("Repeat password")
                     ),
                     TextFormField(
                       obscureText: true,
                       decoration: InputDecoration(
                         hintText: 'Repeat password',

                       ),
                     ),
                     SizedBox(height: 10,),

                     TextButton(
                       onPressed: (){ Navigator.pushNamed(context, '/FinishSignUp');},
                       child: const Text("Sign Up"),
                       style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 7, 2, 33)),
                           foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.white),
                           shape: MaterialStateProperty.all(
                             RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                           ),
                           fixedSize: MaterialStateProperty.all(Size(250, 40))
                       ),
                     ),



                   SizedBox(height: 10),

                     TextButton(
                        onPressed: () {
                        Navigator.pushNamed(context, "/Login");
                        },
                        style: ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith((states) => Colors.green)),
                        child: Text("Already have an Account? Login")
                    )

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
