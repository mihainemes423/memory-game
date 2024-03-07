import 'package:atestat_info/model/card_item_type.dart';

class CardItem {
  CardItemType cardItemType;
  bool isShowing;
  
  CardItem({required this.cardItemType, this.isShowing = false});
}
