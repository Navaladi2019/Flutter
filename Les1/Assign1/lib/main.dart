import 'package:Assign1/pharse.dart';
import 'package:flutter/material.dart';

import 'btn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  var string = "OldText";

  @override
  Widget build(BuildContext context) {
    void buttonPressed() {
      string = "ButtonPressed";
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Assignment'),
        ),
        body: Column(
          children: <Widget>[Pharse(string), Btn(buttonPressed)],
        ),
      ),
    );
  }
}
