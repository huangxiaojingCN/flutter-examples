import 'package:flutter/material.dart';
import 'choice_card.dart';
import 'choice_model.dart';

class AppBarPage extends StatefulWidget {
  @override
  _AppBarPageState createState() => _AppBarPageState();
}

class _AppBarPageState extends State<AppBarPage> {
  Choice _selectChoice;

  _select(Choice choice) {
    setState(() {
      _selectChoice = choice;
    });
  }

  @override
  void initState() {
    super.initState();

    _selectChoice = choices[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar"),
        actions: <Widget>[
          IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                _select(choices[0]);
              }),
          IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                _select(choices[1]);
              }),
          PopupMenuButton<Choice>(onSelected: (Choice choice) {
            _select(choice);
          }, itemBuilder: (BuildContext context) {
            return choices.skip(2).map((item) {
              return PopupMenuItem(child: Text(item.title), value: item);
            }).toList();
          })
        ],
      ),
      body: Padding(
          padding: EdgeInsets.all(20.0),
          child: ChoiceCard(choice: _selectChoice)),
    );
  }
}
