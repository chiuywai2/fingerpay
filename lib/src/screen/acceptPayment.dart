import 'package:flutter/material.dart';
import 'package:fingerpay/src/widget/provider_widget.dart';

class AcceptPay extends StatefulWidget {
  final String encrpytedtext;

  const AcceptPay({Key key, this.encrpytedtext}) : super(key: key);

  @override
  _AcceptPayState createState() => _AcceptPayState();
}

class _AcceptPayState extends State<AcceptPay> {
  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.white),
            ),
            Text('Back',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white))
          ],
        ),
      ),
    );
  }

  Widget _submitButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xffffffff), Color(0xffffffff)])),
        child: Text(
          'Finish',
          style: TextStyle(fontSize: 20, color: Color(0xFF3884e0)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of(context).auth.getCurrent(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return qr(context, snapshot);
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }

  Widget qr(context, snapshot) {
    return Scaffold(
      backgroundColor: Color(0xFF3884e0),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                _submitButton(),
              ],
            ),
          ),
          Positioned(top: 40, left: 0, child: _backButton()),
        ],
      ),
    );
  }
}
