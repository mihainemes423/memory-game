import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/dummy_data.dart';
import 'package:atestat_info/pages/end_page.dart';
import 'package:flutter/material.dart';

class ScoresSection extends StatefulWidget {
  ScoresSection(
      {required this.player1, required this.player2, required this.tura});
  int player1 = 0, player2 = 0;
  bool tura;

  @override
  State<ScoresSection> createState() => _ScoresSectionState();
}

class _ScoresSectionState extends State<ScoresSection> {
  @override
  Widget build(BuildContext context) {
    final Color color1 = widget.tura ? Colors.red : Colors.blue;
    final Color color2 = widget.tura ? Colors.blue : Colors.red;

    return Column(
      children: [
        Text(
          "  Score",
          style: TextStyle(fontSize: 100, color: Colors.red, height: 2),
        ),
        Text("   Player #1: ${widget.player1}",
            style: TextStyle(fontSize: 60, color: color1, height: 2)),
        Text(
          " ",
          style: TextStyle(fontSize: 60, color: Colors.red, height: 2),
        ),
        Text("   Player #2: ${widget.player2}",
            style: TextStyle(fontSize: 60, color: color2)),
        ElevatedButton(
            onPressed: () {
              DummyData.unshowAll();
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: ((context) => EndPage(
                        score1: widget.player1,
                        score2: widget.player2,
                      ))));
            },
            child: Text("End Game"))
      ],
    );
  }
}
