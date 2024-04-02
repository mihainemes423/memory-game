import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/card_item_type.dart';
import 'package:atestat_info/model/dummy_data.dart';
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
    String imageUrl;
    if (widget.cardItem.isShowing)
      imageUrl = widget.cardItem.cardItemType.imageUrl;
    else
      imageUrl = 'https://cdn-icons-png.freepik.com/512/14/14934.png';
    return ElevatedButton(
      onPressed: () {
        widget.onPressed(widget.cardItem);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
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
