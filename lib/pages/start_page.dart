import 'package:atestat_info/pages/game_page.dart';
import 'package:atestat_info/pages/player_name_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Memory Game",
              style: TextStyle(
                fontSize: 150,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 2, 27, 41),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => PlayerNamePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 54, 108, 244),
                fixedSize: const Size(300, 100),
              ),
              child: const Text(
                "PLAY GAME",
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