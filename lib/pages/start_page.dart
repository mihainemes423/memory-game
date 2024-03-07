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
          //https://flutter.svs.ong/#/navigation
          print("Start");
        },
        child: Text("Se apeleaza asta cand apesi"),
      )),
    );
  }
}
