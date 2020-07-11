import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final Function presshandler;

  Btn(this.presshandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
          onPressed: presshandler, child: Text('Press me to change Text')),
    );
  }
}
