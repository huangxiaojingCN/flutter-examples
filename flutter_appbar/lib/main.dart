import 'package:flutter/material.dart';
import 'package:flutterapp/appbar_bottom_page.dart';

import 'appbar_page.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.display1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar Demo"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => AppBarPage()));
                }, child: Text("Appbar", style: textStyle)),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => AppBarBottomPage()));
                },
                child: Text("Appbar Bottom", style: textStyle)),
          ],
        ),
      ),
    );
  }
}