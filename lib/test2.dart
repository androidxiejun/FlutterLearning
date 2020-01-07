import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Randomwidget(),
    );
  }
}

class Randomwidget extends StatefulWidget {
  @override
  createState() => new StateDemo();
}

class StateDemo extends State<Randomwidget> {
  String str = "this is  a demo";

  @override
  build(BuildContext context) => new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text(str),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: _updateText,
          tooltip: 'Update Text',
          child: new Icon(Icons.update)
        ),
      );

  void _updateText() {
    setState(() {
      str = "this text has chanegd";
    });
  }
}
