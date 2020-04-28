import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Drawer Demo")
        ),
        drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pop(context);
        },
                    leading: Icon(Icons.message),
                  title: Text("Messages")
                )
              ]
            )
        ),
        body: Center(
            child: Text("Drawer")
        )
    );
  }
}
