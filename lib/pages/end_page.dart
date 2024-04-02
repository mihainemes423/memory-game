import 'package:atestat_info/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EndPage extends StatelessWidget {
  EndPage({required this.score1, required this.score2});
  int score1, score2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            ("Player #1:    Player #2: "),
            style: TextStyle(
              color: Colors.red,
              fontSize: 30,
              height: 3,
            ),
          ),
          Text(
            ("${score1}   -    ${score2}"),
            style: TextStyle(
              color: Colors.red,
              fontSize: 40,
              height: 1,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: ((context) => StartPage())));
            },
            child: Text("Press To Play Again"),
          ),
        ],
      ),
    );
  }
}
