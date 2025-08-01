import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final String categorytext;
  final Color startColor;
  final Color middleColor;
  final Color endColor;

  const Status({
    super.key,
    required this.categorytext,
    required this.startColor,
    required this.middleColor,
    required this.endColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12, // 12% of screen height
      width: MediaQuery.of(context).size.width * 0.4, // 40% of screen width
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [startColor, middleColor, endColor],
          stops: const [0.0, 0.5, 1.0],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          categorytext,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
