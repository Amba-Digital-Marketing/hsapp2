//import 'package:hsa';
import 'package:flutter/material.dart';
//import 'package:hsapp2/screens/loans.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

// Used for Bottom Navigation Bar

class _HomeWidgetState extends State<HomeWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      // HomeScreen(),
      // Loans(),
      // HomeScreen(),
      // HomeScreen(),
      // HomeScreen(),
    ];
    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0,
        onTap: onTabTapped,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Loans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Invest',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transform_outlined),
            label: 'Transfer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
