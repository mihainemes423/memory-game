import 'package:atestat_info/model/card_item.dart';
import 'package:atestat_info/model/card_item_type.dart';

class DummyData {
  static List<CardItem> cardItemsList = [
    for (CardItemType type in CardItemType.values) CardItem(cardItemType: type),
    for (CardItemType type in CardItemType.values) CardItem(cardItemType: type),
  ];

  static unshowAll() {
    print("Sa moara Franta");
    for (CardItem item in cardItemsList) {
      item.isShowing = false;
      print(item.isShowing);
    }
  }
}
