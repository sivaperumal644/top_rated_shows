import 'package:flutter/material.dart';
import 'package:top_rated_shows/screens/login_screen/login_screen.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LoginScreen());
  }
}
