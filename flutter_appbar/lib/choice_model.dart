import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var choices = [
  Choice(title: "Car", icon: Icons.directions_car),
  Choice(title: "Bicycle", icon: Icons.directions_bike),
  Choice(title: "Boat", icon: Icons.directions_boat),
  Choice(title: "Bus", icon: Icons.directions_bus),
  Choice(title: "Train", icon: Icons.directions_transit),
  Choice(title: "Walk", icon: Icons.directions_walk)
];

class Choice {
  String title;
  IconData icon;

  Choice({this.title, this.icon});
}