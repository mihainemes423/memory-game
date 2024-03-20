import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/dummy_data.dart';
import 'package:atestat_info/pages/scores_section.dart';
import 'package:atestat_info/widgets/card_button.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  CardItem? lastPressedItem = null;

  void onPressedItem(CardItem cardItem) {
    if (lastPressedItem == null && cardItem.isShowing == false) {
      setState(() {
        cardItem.isShowing = true;
        lastPressedItem = cardItem;
      });
    } else if (lastPressedItem != null && cardItem.isShowing == true) {
      setState(() {
        cardItem.isShowing = false;
        lastPressedItem = cardItem;
      });
    }
    print(cardItem.cardItemType.name);
  }

  @override
  void initState() {
    super.initState();
    DummyData.cardItemsList.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 1070),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 6,
              children: [
                for (CardItem item in DummyData.cardItemsList)
                  CardButton(
                    cardItem: item,
                    onPressed: onPressedItem,
                  )
              ],
            ),
          ),
          ScoresSection(),
        ],
      ),
    );
  }
}
