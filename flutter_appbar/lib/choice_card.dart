import 'package:flutter/material.dart';
import 'package:flutterapp/choice_model.dart';

class ChoiceCard extends StatelessWidget {

  Choice choice;

  ChoiceCard({this.choice});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.display1;
    return Container(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(choice.icon, size: 120.0, color: textStyle.color),
            Text(choice.title, style: textStyle)
          ],
        ),
      ),
    );
  }
}
