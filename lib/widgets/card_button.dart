import 'package:atestat_info/model/card_item.dart';
import 'package:flutter/material.dart';

class CardButton extends StatefulWidget {
  CardButton({required this.cardItem});
  CardItem cardItem;

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("object");
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.red,
        child: Center(
          child: Text(
            widget.cardItem.cardItemType.name,
          ),
        ),
      ),
    );
  }
}
