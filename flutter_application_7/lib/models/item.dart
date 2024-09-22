import 'package:flutter_application_7/models/item_color.dart';

class item {
  const item(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.description,
      required this.price,
      required this.score,
      required this.images,
      required this.colors});

  final String id;
  final String title;
  final String imageUrl;
  final List<String> description;
  final num price;
  final double score;
  final List<String> images;

  final List<itemColor> colors;
}

class item2 {
  const item2(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.description,
      required this.price,
      required this.score,
      required this.images,
      required this.colors});
  final String id;
  final String title;
  final String imageUrl;
  final List<String> description;
  final num price;
  final double score;
  final List<String> images;
  final List<itemColor> colors;
}
