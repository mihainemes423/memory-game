import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/card_item_type.dart';
import 'package:atestat_info/model/dummy_data.dart';
import 'package:atestat_info/pages/scores_section.dart';
import 'package:atestat_info/widgets/card_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class GamePage extends StatefulWidget {
  const GamePage({super.key});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  CardItem? lastPressedItem;

  void onPressedItem(CardItem cardItem) {
    if (lastPressedItem == null && cardItem.isShowing == false) {
      lastPressedItem = cardItem;
      setState(() {
        cardItem.isShowing = true;
      });
    } else if (lastPressedItem != null && cardItem.isShowing == false) {
      if (cardItem == lastPressedItem) print("object");
      setState(() {
        cardItem.isShowing = true;
      });

      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          DummyData.unshowAll();
          lastPressedItem = null;
        });
      });
    }

    // if (lastPressedItem == null) {
    //   //no item is showed
    //   if (cardItem.isShowing == false) {
    //     setState(() {
    //       cardItem.isShowing = true;
    //       lastPressedItem = cardItem;
    //     });
    //   } else {
    //     //This case shouldn't happen
    //     setState(() {
    //       DummyData.unshowAll();
    //       lastPressedItem = null;
    //     });
    //   }
    // } else {
    //   //an item is showed
    //   if (cardItem.isShowing == false) {
    //     setState(() {
    //       cardItem.isShowing = true;
    //       print(cardItem.cardItemType);
    //     });

    //     Future.delayed(Duration(seconds: 5), () {
    //       if (lastPressedItem == cardItem) {
    //         setState(() {
    //           print("punct");
    //           lastPressedItem = null;
    //           DummyData.unshowAll();

    //         });
    //       }
    //       if (lastPressedItem != cardItem) {
    //         setState(() {
    //           print("gresit");
    //           lastPressedItem = null;
    //           DummyData.unshowAll();
    //           //cardItem.isShowing = false;
    //         });
    //       }
    //       lastPressedItem = cardItem;
    //     });
    //   } else {
    //     setState(() {
    //       DummyData.unshowAll();
    //       lastPressedItem = null;
    //     });
    //   }
    // }
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
