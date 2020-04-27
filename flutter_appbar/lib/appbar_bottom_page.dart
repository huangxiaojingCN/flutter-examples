import 'package:flutter/material.dart';
import 'package:flutterapp/choice_card.dart';
import 'package:flutterapp/choice_model.dart';

class AppBarBottomPage extends StatefulWidget {
  @override
  _AppBarBottomPageState createState() => _AppBarBottomPageState();
}

class _AppBarBottomPageState extends State<AppBarBottomPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: choices.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appbar Bottom"),
        bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: choices.map((item) {
              return Center(
                child: Column(
                  children: <Widget>[Icon(item.icon), Text(item.title)],
                ),
              );
            }).toList()),
      ),
      body: TabBarView(
          controller: _tabController,
          children: choices.map((item) {
            return ChoiceCard(choice: item);
          }).toList()),
    );
  }
}
