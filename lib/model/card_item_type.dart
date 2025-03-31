import 'package:flutter/material.dart';

enum CardItemType {
  type1,
  type2,
  type3,
  type4,
  type5,
  type6,
  type7,
  type8,
  type9,
  type10,
  type11,
  type12,
}

extension CardItemTypeExtension on CardItemType {
  String get imageAsset {
    switch (this) {
      case CardItemType.type1:
        return "assets/images/baby_duck.jpeg";
      case CardItemType.type2:
        return "assets/images/bow_dog.jpeg";
      case CardItemType.type3:
        return "assets/images/brown_fluffy_dog.jpeg";
      case CardItemType.type4:
        return "assets/images/cool_cat.jpeg";
      case CardItemType.type5:
        return "assets/images/cute_rabbits.jpeg";
      case CardItemType.type6:
        return "assets/images/doge.jpeg";
      case CardItemType.type7:
        return "assets/images/elephant.jpeg";
      case CardItemType.type8:
        return "assets/images/giraffe.jpeg";
      case CardItemType.type9:
        return "assets/images/hugging_cats.jpeg";
      case CardItemType.type10:
        return "assets/images/rabbit_in_grass.jpeg";
      case CardItemType.type11:
        return "assets/images/rabbit_on_rocks.jpeg";
      case CardItemType.type12:
        return "assets/images/white_rabbit_in_grass.jpeg";
    }
  }
}
