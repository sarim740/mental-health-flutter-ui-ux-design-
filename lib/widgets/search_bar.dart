import 'package:flutter/material.dart';

class SearchBarBox extends StatelessWidget {
  const SearchBarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: const Row(
        children: [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 5),
          Text('Search', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
