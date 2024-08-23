import 'package:flutter/material.dart';
import 'package:profile/profile.dart';

class Homescreen extends StatefulWidget {
  @override
  _Homescreenstate createState() => _Homescreenstate();
}

class _Homescreenstate extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Home Screen",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Profile();
                }));
              },
              child: Text("Profile page")),
        ),
      ),
    );
  }
}
