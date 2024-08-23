import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  String title;
  IconData? icon;
  String description;
  Cards({required this.title, required this.icon, required this.description});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          child: Row(
        children: [
          Icon(
            icon,
            size: 25,
            color: Colors.blue,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 25),
          )
        ],
      )),
    );
  }
}
