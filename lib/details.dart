import 'package:flutter/material.dart';
import 'package:profile/List.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.card});

  final Cards card;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          card.title,
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text("${card.description}"),
      ),
    );
  }
}
