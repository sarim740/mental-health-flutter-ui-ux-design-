import 'package:flutter/material.dart';
import 'package:mentalhealth/excercise_tile/excercise_tile.dart';
import 'package:mentalhealth/widgets/greetings_row.dart';
import 'package:mentalhealth/widgets/search_bar.dart';
import 'package:mentalhealth/widgets/emotional_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  GreetingRow(),
                  const SizedBox(height: 25),
                  SearchBarBox(),
                  const SizedBox(height: 25),
                  EmotionSection(),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Expanded(
                      child: ListView(
                        children: const [
                          ExcerciseTile(
                            icon: Icons.favorite,
                            excercisename: 'Speaking Skills',
                            excercisecount: '16 Exercises',
                            clr: '#FF0000',
                          ),
                          ExcerciseTile(
                            icon: Icons.fitness_center,
                            excercisename: 'Physical Training',
                            excercisecount: '10 Exercises',
                            clr: '#FFA500',
                          ),
                          ExcerciseTile(
                            icon: Icons.boy_rounded,
                            excercisename: 'Mind Games',
                            excercisecount: '8 Exercises',
                            clr: '#FFFF00',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
