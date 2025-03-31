import 'package:memory_game/model/card_item.dart';
import 'package:memory_game/model/card_item_type.dart';
import 'package:memory_game/model/dummy_data.dart';
import 'package:flutter/material.dart';

class CardButton extends StatefulWidget {
  CardButton({required this.cardItem, required this.onPressed});
  CardItem cardItem;
  Function(CardItem) onPressed;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  @override
  Widget build(BuildContext context) {
    String imageAsset;
    if (widget.cardItem.isShowing){
      imageAsset = widget.cardItem.cardItemType.imageAsset;
    }
     else{
      imageAsset = "assets/images/dontknow.png";
    }
      
    return ElevatedButton(
      onPressed: () {
        widget.onPressed(widget.cardItem);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageAsset),
            // fit: BoxFit.cover,
          ),
        ),
        // child: Center(
        //   child: Text(
        //     widget.cardItem.cardItemType.name,
        //     style: TextStyle(
        //       color: Colors.red,
        //       fontSize: 30,
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
