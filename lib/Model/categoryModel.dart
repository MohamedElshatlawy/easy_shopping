import 'package:flutter/foundation.dart';

class CategoryModel {
  int id;
  String name;
  int count;
  String imgURLIcon;

  CategoryModel(
      {@required this.count,
      @required this.id,
      @required this.imgURLIcon,
      @required this.name});

  CategoryModel.fromMap(Map<String, dynamic> json) {
    this.id = json['id'];
    this.name = json['name'];
    this.count = json['count'];
    this.imgURLIcon = json['acf']['img'];
  }
}
