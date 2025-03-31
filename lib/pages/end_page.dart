import 'package:memory_game/pages/start_page.dart';
import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  final int score1;
  final int score2;
  const EndPage({
    super.key, 
    required this.score1, 
    required this.score2,
    required this.player1Name,
    required this.player2Name
    });

  final String player1Name;
  final String player2Name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Players label
            Text(
              "$player1Name       $player2Name",
              style: const TextStyle(
                color: Color.fromARGB(255, 2, 27, 41),
                fontSize: 100,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            
            // Scores
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  "$score1",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 2, 27, 41),
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  " : ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 2, 27, 41),
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "$score2",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 2, 27, 41),
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            
            // Play Again button
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const StartPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 54, 108, 244),
                fixedSize: const Size(300, 100),
              ),
              child: const Text(
                "PLAY AGAIN",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 2, 27, 41),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}