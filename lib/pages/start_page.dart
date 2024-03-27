import 'package:atestat_info/pages/game_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        //!Aici trebuie facut navigarea
        onPressed: () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => GamePage()));
        },
        child: Text("Se apeleaza asta cand apesi"),
      )),
    );
  }
}
