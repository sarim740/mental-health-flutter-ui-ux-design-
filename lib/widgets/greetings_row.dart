import 'package:flutter/material.dart';

class GreetingRow extends StatelessWidget {
  const GreetingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi, Sarim!',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 8),
            Text('25 June 2025', style: TextStyle(color: Colors.blue[200])),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue[600],
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
          child: const Icon(Icons.notifications, color: Colors.white),
        ),
      ],
    );
  }
}
