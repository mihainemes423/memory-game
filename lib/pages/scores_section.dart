import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/dummy_data.dart';
import 'package:atestat_info/pages/end_page.dart';
import 'package:flutter/material.dart';

class ScoresSection extends StatefulWidget {
  ScoresSection({
    required this.player1,
    required this.player2,
    required this.tura, 
    required this.player1Name, 
    required this.player2Name,
  });
  
  int player1 = 0, player2 = 0;
  bool tura;
  final String player1Name;
  final String player2Name;

  @override
  State<ScoresSection> createState() => _ScoresSectionState();
}

class _ScoresSectionState extends State<ScoresSection> {
  @override
  Widget build(BuildContext context) {
    final Color color1 = widget.tura ? Colors.red : Colors.blue;
    final Color color2 = widget.tura ? Colors.blue : Colors.red;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Score",
            style: TextStyle(
              fontSize: 100,
              color: Colors.red,
              height: 2,
            ),
          ),
          Text(
            "${widget.player1Name}: ${widget.player1}",
            style: TextStyle(
              fontSize: 60,
              color: color1,
              height: 2,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "${widget.player2Name}: ${widget.player2}",
            style: TextStyle(
              fontSize: 60,
              color: color2,
            ),
          ),
          const SizedBox(height: 30),
          Center(
            child: ElevatedButton(
              onPressed: () {
                DummyData.unshowAll();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: ((context) => EndPage(
                          score1: widget.player1,
                          score2: widget.player2,
                          player1Name: widget.player1Name,
                          player2Name: widget.player2Name,
                        )),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 54, 108, 244),
                minimumSize: const Size(200, 60),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                "END GAME",
                style: TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 2, 27, 41),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}