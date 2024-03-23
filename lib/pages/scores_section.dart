import 'package:flutter/material.dart';

class ScoresSection extends StatefulWidget {
  const ScoresSection({super.key});

  @override
  State<ScoresSection> createState() => _ScoresSectionState();
}

class _ScoresSectionState extends State<ScoresSection> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "  Score",
          style: TextStyle(fontSize: 100, color: Colors.red, height: 2),
        ),
        Text("   Player #1: 12",
            style: TextStyle(fontSize: 60, color: Colors.red, height: 2)),
        Text(
          " ",
          style: TextStyle(fontSize: 60, color: Colors.red, height: 2),
        ),
        Text("   Player #2: 12",
            style: TextStyle(fontSize: 60, color: Colors.red)),
      ],
    );
  }
}
