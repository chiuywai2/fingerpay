import 'package:flutter/material.dart';
import 'package:fingerpay/src/screen/dashboard.dart';
import 'package:fingerpay/src/screen/pay.dart';
import 'package:fingerpay/src/screen/history.dart';
import 'package:fingerpay/src/screen/account.dart';
import 'package:fingerpay/src/screen/setting.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIdx = 0;
  PageController _myPage = PageController(initialPage: 0);
  double money = 0.00;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => showDialog(
          context: context,
          builder: (context) => AlertDialog(
                  title: Text('Are you sure you want to quit?'),
                  actions: <Widget>[
                    RaisedButton(
                        child: Text('Quit'),
                        onPressed: () => Navigator.of(context).pop(true)),
                    RaisedButton(
                        child: Text('Cancel'),
                        onPressed: () => Navigator.of(context).pop(false)),
                  ])),
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
          child: FittedBox(
              child: FloatingActionButton(
            onPressed: () {
              setState(() {
                _myPage.jumpToPage(2);
                selectedIdx = 2;
              });
            },
            child: Icon(
              Icons.attach_money,
              color: selectedIdx == 2 ? Colors.black : Colors.white,
            ),
          )),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  color: selectedIdx == 0 ? Colors.black : Colors.grey,
                  iconSize: 30.0,
                  padding: EdgeInsets.only(left: 28.0),
                  icon: Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      selectedIdx = 0;
                      _myPage.jumpToPage(0);
                    });
                  },
                ),
                IconButton(
                    color: selectedIdx == 1 ? Colors.black : Colors.grey,
                    iconSize: 30.0,
                    padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(Icons.person),
                    onPressed: () {
                      setState(() {
                        selectedIdx = 1;
                        _myPage.jumpToPage(1);
                      });
                    }),
                IconButton(
                    color: selectedIdx == 3 ? Colors.black : Colors.grey,
                    iconSize: 30.0,
                    padding: EdgeInsets.only(left: 28.0),
                    icon: Icon(Icons.history),
                    onPressed: () {
                      setState(() {
                        selectedIdx = 3;
                        _myPage.jumpToPage(3);
                      });
                    }),
                IconButton(
                    color: selectedIdx == 4 ? Colors.black : Colors.grey,
                    iconSize: 30.0,
                    padding: EdgeInsets.only(right: 28.0),
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      setState(() {
                        selectedIdx = 4;
                        _myPage.jumpToPage(4);
                      });
                    }),
              ],
            ),
          ),
        ),
        body: PageView(
          controller: _myPage,
          // onPageChanged: (int) {
          //   selectedIdx = int;
          // },
          children: <Widget>[
            Center(
              child: Container(
                child: Dashboard(),
              ),
            ),
            Center(
              child: Container(
                child: Account(),
              ),
            ),
            Center(
              child: Container(
                child: Pay(),
              ),
            ),
            Center(
              child: Container(
                child: History(),
              ),
            ),
            Center(
              child: Container(
                child: Setting(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
