import 'package:flutter/material.dart';
import 'package:mentalhealth/widgets/greetings_row.dart';
import 'package:mentalhealth/widgets/search_bar.dart';
import 'package:mentalhealth/consultant/consultant.dart';
import 'package:mentalhealth/widgets/status.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],

      body: SafeArea(
        child: Column(
          children: [
            // Greeting and Search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: const [
                  GreetingRow(),
                  SizedBox(height: 25),
                  SearchBarBox(),
                  SizedBox(height: 25),
                ],
              ),
            ),

            // Fixed Category Section
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Category',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Status(
                        categorytext: 'Relationship',
                        startColor: Color.fromARGB(255, 232, 215, 137),
                        middleColor: Colors.orange,
                        endColor: Color.fromARGB(255, 232, 215, 137),
                      ),
                      Status(
                        categorytext: 'Career',
                        startColor: Color.fromARGB(255, 150, 25, 104),
                        middleColor: Colors.blue,
                        endColor: Color.fromARGB(255, 150, 25, 104),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Status(
                        categorytext: 'Education',
                        startColor: Color.fromARGB(255, 217, 178, 203),
                        middleColor: Colors.pinkAccent,
                        endColor: Color.fromARGB(255, 217, 178, 203),
                      ),
                      Status(
                        categorytext: 'Other',
                        startColor: Color.fromARGB(255, 150, 25, 104),
                        middleColor: Colors.pinkAccent,
                        endColor: Color.fromARGB(255, 150, 25, 104),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Scrollable Consultant Section
            Expanded(
              child: Container(
                color: Colors.grey[200],
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Consultant',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    const SizedBox(height: 15),

                    // Scrollable list of consultants only
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Consultant(
                              icon: Icons.person,
                              consultantname: 'Dr. Nimra Anayat',
                              consultanteducation: 'MD, Pharmacy',
                              clr: '#FF4500',
                            ),
                            Consultant(
                              icon: Icons.person_outline,
                              consultantname: 'Dr. Tanzila',
                              consultanteducation: 'PhD, Pharmacy',
                              clr: '#228B22',
                            ),
                            Consultant(
                              icon: Icons.person,
                              consultantname: 'Dr. Ali',
                              consultanteducation: 'MD, Psychiatry',
                              clr: '#008080',
                            ),
                            Consultant(
                              icon: Icons.person_outline,
                              consultantname: 'Dr. Maria Sohail',
                              consultanteducation: 'PhD, Psychology',
                              clr: '#9370DB',
                            ),
                          ],
                        ),
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
