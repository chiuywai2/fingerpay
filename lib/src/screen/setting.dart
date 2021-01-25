import 'package:flutter/material.dart';
import 'package:fingerpay/src/widget/topbar.dart';
import 'package:fingerpay/src/common.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  double money = 0.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        child: Stack(children: <Widget>[
          Topbar(
            barHeight: 150,
          ),
          SafeArea(
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "\nTotal Balance\n",
                            style: TextStyle(
                                color: white.withOpacity(0.5), fontSize: 18)),
                        TextSpan(
                            text: "\$ ",
                            style: TextStyle(
                                color: white.withOpacity(0.5), fontSize: 30)),
                        TextSpan(
                            text: "1,234.00 \n",
                            style: TextStyle(color: white, fontSize: 36)),
                        TextSpan(
                            text: " \nYour cards",
                            style: TextStyle(
                                color: white.withOpacity(0.5), fontSize: 18)),
                      ])),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: white,
                          size: 40,
                        ),
                        onPressed: () {})
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
