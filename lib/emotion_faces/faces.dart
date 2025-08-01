import 'package:flutter/material.dart';

class Emotionalfaces extends StatelessWidget {
  final String emotional;

  const Emotionalfaces({super.key, required this.emotional});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(14),
      ),
      padding: EdgeInsets.all(10),
      child: Center(child: Text(emotional, style: TextStyle(fontSize: 40))),
    );
  }
}
