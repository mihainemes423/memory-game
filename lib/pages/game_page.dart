import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/dummy_data.dart';
import 'package:atestat_info/widgets/card_button.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints(maxWidth: 800),
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            for (CardItem item in DummyData.cardItemsList)
              CardButton(cardItem: item)
          ],
        ),
      ),
    );
  }
}
