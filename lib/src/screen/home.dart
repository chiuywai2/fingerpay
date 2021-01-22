import 'package:flutter/material.dart';
import 'package:fingerpay/src/common.dart';
import 'package:fingerpay/src/screen/dashboard.dart';
import 'package:fingerpay/src/screen/pay.dart';
import 'package:fingerpay/src/screen/history.dart';
import 'package:fingerpay/src/screen/account.dart';
import 'package:fingerpay/src/screen/profile.dart';
import 'package:fingerpay/src/screen/topUp.dart';
import 'package:fingerpay/src/screen/creditCards.dart';
import 'package:fingerpay/src/screen/setting.dart';

class Fingerpay extends StatefulWidget {
  Fingerpay({Key key}) : super(key: key);
  @override
  _FingerpayState createState() => _FingerpayState();
}

const List<String> tabNames = const <String>[
  'Dashboard',
  'Pay',
  'History',
  'Account',
  'Profile',
  'TopUp',
  'Cards',
  'Settings'
];

class _FingerpayState extends State<Fingerpay> {
  int _screen = 0;
  double money = 0.00;
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: tabNames.length,
        child: new Scaffold(
          backgroundColor: white,
          body: new TabBarView(children: [
            Dashboard(),
            Pay(),
            History(),
            Account(),
            Profile(),
            TopUp(),
            Cards(),
            Setting(),
          ]),
          bottomNavigationBar: new Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              new AnimatedCrossFade(
                firstChild: new Material(
                  color: Theme.of(context).primaryColor,
                  child: new TabBar(
                      isScrollable: true,
                      tabs: new List.generate(tabNames.length, (index) {
                        return new Tab(text: tabNames[index]);
                      })),
                ),
                secondChild: new Container(),
                crossFadeState: _screen == 0
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 300),
              ),
            ],
          ),
        ));
  }
}
