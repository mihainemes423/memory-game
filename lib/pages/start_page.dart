import 'package:atestat_info/pages/game_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => GamePage()));
        },
        child: Container(
          child: Center(
            child: Text(
              "PLAY GAME",
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepPurpleAccent,
              ),
            ),
          ),
          //child: Text("PLAY GAME"),
          width: 300,
          height: 100,
          color: Colors.red,
        ),
      )),
    );
  }
}
