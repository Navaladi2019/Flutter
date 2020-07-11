import 'package:flutter/material.dart';

class Pharse extends StatelessWidget {
  final String presshandler;

  Pharse(this.presshandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        presshandler,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 36, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      )),
    );
  }
}
