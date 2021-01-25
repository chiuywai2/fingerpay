import 'package:flutter/material.dart';
import 'package:fingerpay/src/models/hex_color.dart';

class Topbar extends StatefulWidget {
  final double barHeight;
  @override
  Topbar({this.barHeight});
  State<StatefulWidget> createState() => _TopbarState();
}

class _TopbarState extends State<Topbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: widget.barHeight,
            decoration: BoxDecoration(
                color: HexColor("0074ad"),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60),
                  bottomLeft: Radius.circular(60),
                )),
          ),
        ],
      ),
    );
  }
}
