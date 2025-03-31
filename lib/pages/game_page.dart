import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/dummy_data.dart';
import 'package:atestat_info/pages/scores_section.dart';
import 'package:atestat_info/widgets/card_button.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class GamePage extends StatefulWidget {
  final String player1Name;
  final String player2Name;
  const GamePage({
    super.key,
    required this.player1Name,
    required this.player2Name,
  });

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  CardItem? lastPressedItem;
  int score1 = 0, score2 = 0;
  bool tura = false;
  int selectedCardsCount = 0;
  bool interactionEnabled = true;

  void resetTurn() {
    setState(() {
      lastPressedItem = null;
      selectedCardsCount = 0;
      interactionEnabled = true;
    });
  }

  void increaseScore() {
    setState(() {
      if (tura) {
        score2++;
      } else {
        score1++;
      }
      selectedCardsCount = 0;
    });
  }

  void changeTura() {
    setState(() {
      tura = !tura;
    });
  }

  void onPressedItem(CardItem cardItem) {
    if (!interactionEnabled || cardItem.isShowing || selectedCardsCount >= 2)
      return;

    if (lastPressedItem == null) {
      //no item is showed
      if (cardItem.isShowing == false) {
        setState(() {
          selectedCardsCount = 1;
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
      if (cardItem.isShowing == false && selectedCardsCount == 1) {
        setState(() {
          selectedCardsCount = 2;
          cardItem.isShowing = true;
        });

        ///you choose right
        if (lastPressedItem!.cardItemType == cardItem.cardItemType) {
          increaseScore();
          lastPressedItem = null;
        } else {
          //if you choose wrong
          Future.delayed(Duration(seconds: 2), () {
            setState(() {
              lastPressedItem!.isShowing = false;
              cardItem.isShowing = false;
              lastPressedItem = null;
              selectedCardsCount = 0;
              changeTura();
            });
          });
        }
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
          Container(
            width: 400,
            decoration: BoxDecoration(
              border: Border(left: BorderSide(color: Colors.grey.shade300)),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: SingleChildScrollView(
              child: ScoresSection(
                player1: score1,
                player2: score2,
                tura: tura,
                player1Name: widget.player1Name,
                player2Name: widget.player2Name,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
