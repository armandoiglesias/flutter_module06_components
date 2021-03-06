import 'package:flutter/material.dart';
import 'package:modulo06_component/src/pages/alert_page.dart';
import 'package:modulo06_component/src/pages/animated_container.dart';
import 'package:modulo06_component/src/pages/avatar_page.dart';
import 'package:modulo06_component/src/pages/card_page.dart';
import 'package:modulo06_component/src/pages/home_page.dart';
import 'package:modulo06_component/src/pages/input_page.dart';
import 'package:modulo06_component/src/pages/listview_page.dart';
import 'package:modulo06_component/src/pages/slider_page.dart';

final routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => HomePage(),
  "alert": (BuildContext context) => AlertPage(),
  "avatar": (BuildContext context) => AvatarPage(),
  "card": (BuildContext context) => CardPage(),
  "animatedContainer": (BuildContext context) => AnimatedContainerPage(),
  "inputs": (BuildContext context) => InputPage(),
  "slider": (BuildContext context) => SliderPage(),
  "list": (BuildContext context) => ListViewPage(),
  
};
