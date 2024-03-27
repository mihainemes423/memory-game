import 'package:atestat_info/pages/start_page.dart';
import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  EndPage({required this.score1, required this.score2});
  int score1, score2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("${score1} ${score2}"),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => StartPage())));
          }, child: Text("Press Me"))
        ],
      ),
    );
  }
}
