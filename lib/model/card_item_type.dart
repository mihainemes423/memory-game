enum CardItemType {
  type1,
  type2,
  type3,
  type4,
  type5,
  type6,
}

extension CardItemTypeExtension on CardItemType {
  String get imageUrl {
    switch (this) {
      case CardItemType.type1:
        return 'https://example.com/image1.jpg';
      case CardItemType.type2:
        return 'https://example.com/image2.jpg';
      case CardItemType.type3:
        return 'https://example.com/image3.jpg';
      case CardItemType.type4:
        return 'https://example.com/image4.jpg';
      case CardItemType.type5:
        return 'https://example.com/image5.jpg';
      case CardItemType.type6:
        return 'https://example.com/image6.jpg';
    }
  }
}
