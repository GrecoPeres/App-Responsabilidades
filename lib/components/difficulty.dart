import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {

  final int DifficultyLevel;
  
  const Difficulty({
    required this.DifficultyLevel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, size: 15, color: (DifficultyLevel >= 1) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star, size: 15, color: (DifficultyLevel >= 2) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star, size: 15, color: (DifficultyLevel >= 3) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star, size: 15, color: (DifficultyLevel >= 4) ? Colors.blue : Colors.blue[100]),
        Icon(Icons.star, size: 15, color: (DifficultyLevel >= 5) ? Colors.blue : Colors.blue[100]),
      ],
    );
  }
}