import 'package:atestat_info/model/card_item.dart';
import 'package:flutter/material.dart';

class ScoresSection extends StatefulWidget {
  const ScoresSection({super.key});

  @override
  State<ScoresSection> createState() => _ScoresSectionState();
}

class _ScoresSectionState extends State<ScoresSection> {
  int player1 = 0, player2 = 0;

  void scoreCalculator(bool ok, int tura) {
    if (tura == 1 && ok == 1) {
      setState(() {
        player1 = player1 + 1;
      });
    }
    if (tura == 2 && ok == 1) {
      setState(() {
        player2 = player2 + 1;
      });
    }
  }

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
