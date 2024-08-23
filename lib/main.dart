import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profile/Homescreen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homescreen());
  }
}
