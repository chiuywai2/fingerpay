import 'package:fingerpay/src/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:fingerpay/src/common.dart';

class Fingerpay extends StatefulWidget {
  @override
  _FingerpayState createState() => _FingerpayState();
}

class _FingerpayState extends State<Fingerpay> {
  double money = 50.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: white, body: Dashboard());
  }
}
