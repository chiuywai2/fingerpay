import 'package:fingerpay/src/widget/historyItem.dart';
import 'package:flutter/material.dart';
import 'package:fingerpay/src/widget/topbar.dart';
import 'package:fingerpay/src/common.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
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
                            style: TextStyle(color: white, fontSize: 18)),
                        TextSpan(
                            text: "\$ ",
                            style: TextStyle(color: white, fontSize: 30)),
                        TextSpan(
                            text: "1,234.00 \n",
                            style: TextStyle(color: white, fontSize: 36)),
                      ])),
                    ),
                    IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: white,
                          size: 40,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        })
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "History",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 650,
                  child: ListView(
                    shrinkWrap: true,
                    physics: AlwaysScrollableScrollPhysics(),
                    children: <Widget>[
                      HistoryItem(
                          iconPath: 'p3.jpg',
                          money: -430,
                          name: 'Kenny Chiu',
                          date: DateTime.parse("2020-12-24 20:18:00")),
                      HistoryItem(
                          iconPath: 'p3.jpg',
                          money: -430,
                          name: 'Kenny Chiu',
                          date: DateTime.parse("2020-12-24 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p3.jpg',
                          money: -430,
                          name: 'Kenny Chiu',
                          date: DateTime.parse("2020-12-24 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                      HistoryItem(
                          iconPath: 'p2.jpg',
                          money: -200,
                          name: 'William',
                          date: DateTime.parse("2020-12-20 20:18:00")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
