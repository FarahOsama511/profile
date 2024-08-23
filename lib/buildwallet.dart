import 'package:flutter/material.dart';

Widget buildWalletSpentCard(String title, String amount) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
    width: 160,
    decoration: BoxDecoration(
        shape: BoxShape.rectangle, border: Border.all(color: Colors.grey)),
    child: Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Text(
          amount,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
