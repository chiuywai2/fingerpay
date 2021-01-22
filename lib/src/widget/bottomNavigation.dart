import 'package:flutter/material.dart';
import 'package:fingerpay/src/common.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            white,
            white.withOpacity(0.1),
          ])),
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Dashbord",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Pay",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, color: grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "History",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, color: grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Account",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, color: grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Profile",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, color: grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "TopUp",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, color: grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Cards",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, color: grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Settings",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, color: grey),
            ),
          ),
        ],
      ),
    );
  }
}
