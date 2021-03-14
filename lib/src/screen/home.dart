import 'package:flutter/material.dart';
import 'package:fingerpay/src/screen/dashboard.dart';
import 'package:fingerpay/src/screen/history.dart';
import 'package:fingerpay/src/screen/account.dart';
import 'package:fingerpay/src/screen/setting.dart';
import 'package:fingerpay/src/widget/fab_menuItem.dart';
import 'package:fingerpay/src/widget/fab_menu.dart';
import 'package:fingerpay/src/screen/myCard.dart';
import 'package:fingerpay/src/screen/topUp.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIdx = 0;
  PageController _myPage = PageController(initialPage: 0);
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
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: BoomMenu(
          animatedIcon: AnimatedIcons.menu_close,
          animatedIconTheme: IconThemeData(size: 22.0),
          //child: Icon(Icons.add),
          onOpen: () => print('OPENING DIAL'),
          onClose: () => print('DIAL CLOSED'),
          scrollVisible: true,
          overlayColor: Colors.black,
          overlayOpacity: 0.7,
          children: [
            MenuItem(
              child: Icon(Icons.send, color: Colors.white),
              title: "Send",
              titleColor: Colors.white,
              subtitle: "You can send money to anyone",
              subTitleColor: Colors.white,
              backgroundColor: Colors.blue,
              onTap: () {},
            ),
            MenuItem(
              child: Icon(Icons.border_color, color: Colors.black),
              title: "Request",
              titleColor: Colors.black,
              subtitle: "Make a request to receive money",
              subTitleColor: Colors.black,
              backgroundColor: Colors.white,
              onTap: () => print('SECOND CHILD'),
            ),
            MenuItem(
              child: Icon(Icons.monetization_on, color: Colors.white),
              title: "Top Up",
              titleColor: Colors.white,
              subtitle: "Top up money to your account",
              subTitleColor: Colors.white,
              backgroundColor: Colors.blue,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TopUpPage()));
              },
            ),
            MenuItem(
              child: Icon(Icons.credit_card, color: Colors.black),
              title: "My Card",
              titleColor: Colors.black,
              subtitle: "You can add a credit card or bank account",
              subTitleColor: Colors.black,
              backgroundColor: Colors.white,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreditCardsPage()));
              },
            )
          ],
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
                  padding: EdgeInsets.only(left: 28.0, right: 28.0),
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
                    padding: EdgeInsets.only(left: 28.0, right: 28.0),
                    icon: Icon(Icons.person),
                    onPressed: () {
                      setState(() {
                        selectedIdx = 1;
                        _myPage.jumpToPage(1);
                      });
                    }),
                IconButton(
                    color: selectedIdx == 2 ? Colors.black : Colors.grey,
                    iconSize: 30.0,
                    padding: EdgeInsets.only(left: 28.0, right: 28.0),
                    icon: Icon(Icons.history),
                    onPressed: () {
                      setState(() {
                        selectedIdx = 2;
                        _myPage.jumpToPage(2);
                      });
                    }),
                IconButton(
                    color: selectedIdx == 3 ? Colors.black : Colors.grey,
                    iconSize: 30.0,
                    padding: EdgeInsets.only(left: 28.0, right: 28.0),
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      setState(() {
                        selectedIdx = 3;
                        _myPage.jumpToPage(3);
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
