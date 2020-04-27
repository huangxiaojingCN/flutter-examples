import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List cities = [
    "Beijing",
    "Shanghai",
    "Guangzhou",
    "Shenzhen",
    "Nanjing",
    "Chengdu",
    "Chongqing"
  ];

  String _selectCityName;

  List<DropdownMenuItem<String>> _dropDownMenuItems;

  List<DropdownMenuItem<String>> buildAndGetDropDownMenuItems(List cities) {
    return cities.map((city) {
      return DropdownMenuItem<String>(child: Text(city, style: TextStyle(fontSize: 24.0),), value: city);
    }).toList();
  }

  changedDropDownItem(String cityName) {
    setState(() {
      _selectCityName = cityName;
    });
  }

  @override
  void initState() {
    _dropDownMenuItems = buildAndGetDropDownMenuItems(cities);
    _selectCityName = _dropDownMenuItems[0].value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme.display1;
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Please choice your city.", style: textStyle,),
              DropdownButton(
                  value: _selectCityName,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem)
            ],
          ),
        ),
      ),
    );
  }
}
