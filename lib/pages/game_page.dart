import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/dummy_data.dart';
import 'package:atestat_info/pages/scores_section.dart';
import 'package:atestat_info/widgets/card_button.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  CardItem? lastPressedItem;
  int score1 = 0, score2 = 0;
  bool tura = false;

  void increaseScore() {
    setState(() {
      if (tura) {
        score2++;
      } else {
        score1++;
      }
    });
  }

  void changeTura() {
    setState(() {
      tura = !tura;
    });
  }

  void onPressedItem(CardItem cardItem) {
    if (lastPressedItem == null) {
      //no item is showed
      if (cardItem.isShowing == false) {
        setState(() {
          cardItem.isShowing = true;
          lastPressedItem = cardItem;
        });
      } else {
        //This case shouldn't happen
        setState(() {
          DummyData.unshowAll();
          lastPressedItem = null;
        });
      }
    } else {
      //an item is already showed
      if (cardItem.isShowing == false) {
        setState(() {
          cardItem.isShowing = true;
        });
        if (lastPressedItem!.cardItemType == cardItem.cardItemType) {
          increaseScore();
          lastPressedItem = null;
        } else {}
        //if you choose wrong
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            lastPressedItem!.isShowing = false;
            cardItem.isShowing = false;
            lastPressedItem = null;
            changeTura();
          });
        });
      }
    }
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
          ScoresSection(
            player1: score1,
            player2: score2,
            tura: tura,
          ),
        ],
      ),
    );
  }
}
