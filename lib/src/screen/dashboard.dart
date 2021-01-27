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
                    ])),
                  ),
                  IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        color: white,
                        size: 40,
                      ),
                      onPressed: () {}),
                ],
              )
            ],
          )),
          Padding(
            padding: EdgeInsets.only(top: 130.0, right: 25.0, left: 25.0),
            child: Container(
              width: double.infinity,
              height: 225.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(0.0, 3.0),
                        blurRadius: 15.0)
                  ]),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.purple.withOpacity(0.1),
                              child: IconButton(
                                padding: EdgeInsets.all(15.0),
                                icon: Icon(Icons.send),
                                color: Colors.purple,
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text('Send',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.orange.withOpacity(0.1),
                              child: IconButton(
                                padding: EdgeInsets.all(15.0),
                                icon: Icon(Icons.border_color),
                                color: Colors.orange,
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text('Request',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.blue.withOpacity(0.1),
                              child: IconButton(
                                padding: EdgeInsets.all(15.0),
                                icon: Icon(Icons.monetization_on),
                                color: Colors.blue,
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text('Top Up',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.pink.withOpacity(0.1),
                              child: IconButton(
                                padding: EdgeInsets.all(15.0),
                                icon: Icon(Icons.receipt),
                                color: Colors.pink,
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text('Invoice',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.purpleAccent.withOpacity(0.1),
                              child: IconButton(
                                padding: EdgeInsets.all(15.0),
                                icon: Icon(Icons.credit_card),
                                color: Colors.purpleAccent,
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text('My Card',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Material(
                              borderRadius: BorderRadius.circular(100.0),
                              color: Colors.deepPurple.withOpacity(0.1),
                              child: IconButton(
                                padding: EdgeInsets.all(15.0),
                                icon: Icon(Icons.business),
                                color: Colors.deepPurple,
                                iconSize: 30.0,
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Text('Bank',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 360.0, right: 8.0, left: 8.0),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Your Card",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
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
          )
        ]),
      ),
    );
  }
}
