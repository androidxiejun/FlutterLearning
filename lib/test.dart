import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      home: new TestBar(),
    );
  }
}

class TestBar extends StatefulWidget {
  @override
  createState() => new RandomList();
}

class RandomList extends State<TestBar> {
  final listStr = <String>[];
  final _saved = new Set<String>();
  @override
  build(BuildContext context) => new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: _list(),
      );

  Widget _list() {
    if(listStr.length==0){
      listStr.add("test1");
      listStr.add("test2");
      listStr.add("test3");
      listStr.add("test4");
      listStr.add("test5");
      listStr.add("test6");
      listStr.add("test7");
    }


    return new ListView.builder(
        itemCount: listStr.length,
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
//          final str = listStr[i];
          final alreadySaved = _saved.contains(listStr[i]);
          return new ListTile(
            title: new Text(listStr[i]),
            trailing: new Icon(
              alreadySaved ? Icons.favorite : Icons.favorite_border,
              color: alreadySaved ? Colors.red : null,
            ),
            onTap: () {
              setState(() {
                if (alreadySaved) {
                  _saved.remove(listStr[i]);
                } else {
                  _saved.add(listStr[i]);
                }
                _saved.add(null);
              });
            },
          );
        });
  }
}
