import 'package:fingerpay/src/widget/profileIcon.dart';
import 'package:flutter/material.dart';
import 'package:fingerpay/src/widget/topbar.dart';
import 'package:fingerpay/src/common.dart';
import 'package:fingerpay/src/widget/cards.dart';
import 'package:fingerpay/src/widget/historyItem.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          Topbar(
            barHeight: 300,
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
                        TextSpan(
                            text: " \nYour cards",
                            style: TextStyle(color: white, fontSize: 18)),
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
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CreditCard(
                        color: "2a1214",
                        number: 9290,
                        image: "master.png",
                        valid: "VALID 10/22",
                      ),
                      CreditCard(
                        color: "000068",
                        number: 1298,
                        image: "visa.png",
                        valid: "VALID 07/24",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Send money",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          child: Icon(Icons.add),
                          radius: 25,
                        ),
                      ),
                      ProfileIcon(
                        image: "p2.jpg",
                      ),
                      ProfileIcon(image: "p3.jpg"),
                      ProfileIcon(image: "p1.jpg"),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Recent transactions",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 325,
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
                          iconPath: 'p3.jpg',
                          money: -430,
                          name: 'Kenny Chiu',
                          date: DateTime.parse("2020-12-24 20:18:00")),
                      HistoryItem(
                          iconPath: 'p3.jpg',
                          money: -430,
                          name: 'Kenny Chiu',
                          date: DateTime.parse("2020-12-24 20:18:00")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
