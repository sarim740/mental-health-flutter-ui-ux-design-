import 'package:flutter/material.dart';
import 'package:mentalhealth/emotion_faces/faces.dart';

class EmotionSection extends StatelessWidget {
  const EmotionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'How do you feel now?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Icon(Icons.more_horiz, color: Colors.white),
          ],
        ),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Emotionalfaces(emotional: '😊'),
                const SizedBox(height: 10),
                const Text('Happy', style: TextStyle(color: Colors.white)),
              ],
            ),
            Column(
              children: [
                Emotionalfaces(emotional: '😢'),
                const SizedBox(height: 10),
                const Text('Sad', style: TextStyle(color: Colors.white)),
              ],
            ),
            Column(
              children: [
                Emotionalfaces(emotional: '😡'),
                const SizedBox(height: 10),
                const Text('Angry', style: TextStyle(color: Colors.white)),
              ],
            ),
            Column(
              children: [
                Emotionalfaces(emotional: '😴'),
                const SizedBox(height: 10),
                const Text('Sleepy', style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
