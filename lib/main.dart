import 'package:flutter/material.dart';
import 'package:top_rated_shows/nav_screens.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: NavigateScreens(selectedIndex: 0));
  }
}
