import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  int _currentIndex = 0;

  static const TextStyle textStyle =
      TextStyle(fontSize: 24.0, color: Colors.orangeAccent);

  static const List<Widget> _contents = [
    Text("Home", style: textStyle),
    Text("Business", style: textStyle),
    Text("School", style: textStyle)
  ];

  _onItemTapped(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _contents.elementAt(_currentIndex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          onTap: _onItemTapped,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.orangeAccent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.business), title: Text("Business")),
            BottomNavigationBarItem(
                icon: Icon(Icons.school), title: Text("School"))
          ]),
    );
  }
}
