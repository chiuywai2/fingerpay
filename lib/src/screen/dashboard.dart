import 'package:fingerpay/src/widget/profileIcon.dart';
import 'package:flutter/material.dart';
import 'package:fingerpay/src/widget/topbar.dart';
import 'package:fingerpay/src/common.dart';
import 'package:fingerpay/src/widget/cards.dart';
import 'package:fingerpay/src/models/hex_color.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  double money = 0.00;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          Topbar(),
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
                      child: Text("Send money"),
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
                      ProfileIcon(image: "p2.jpg"),
                      ProfileIcon(image: "p3.jpg"),
                      ProfileIcon(image: "p1.jpg"),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Recent transactions"),
                    ),
                  ],
                ),
                ListTile(
                  onTap: () {
                    _settingModalBottomSheet(context);
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("images/p3.jpg"),
                  ),
                  title: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'Kenny Chiu\n'),
                    TextSpan(
                        text: 'Money Sent - Today 9AM',
                        style: TextStyle(fontSize: 14, color: grey))
                  ], style: TextStyle(color: Colors.black, fontSize: 18))),
                  trailing: Text(
                    "- \$430",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ListTile(
                  onTap: () {
                    _settingModalBottomSheet(context);
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("images/p2.jpg"),
                  ),
                  title: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: 'Bob Chong\n'),
                    TextSpan(
                        text: 'Money received - Today 12PM',
                        style: TextStyle(fontSize: 14, color: grey))
                  ], style: TextStyle(color: Colors.black, fontSize: 18))),
                  trailing: Text(
                    "+ \$220",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20))),
            child: new Wrap(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("images/p2.jpg"),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Bob Chong",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Amount to send"),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                          onTap: () {
                            if (money != 0) {
                              money -= 10;
                            }
                          },
                          child: CircleAvatar(
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            radius: 20,
                            backgroundColor: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "$money",
                      style:
                          TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              money += 10;
                            });
                          },
                          child: CircleAvatar(
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            radius: 20,
                            backgroundColor: Colors.grey,
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: HexColor("0074ad"),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            "Send Money",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
